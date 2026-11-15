# 从源码构建 06Link

构建读取本仓库的 Java、Smali、XML 和已配置的运行依赖，由 Python 构建器生成安装包。

## 环境与第一次构建

- Python 3.11 或更新版本，仅使用标准库。
- 完整 JDK 17，需包含 `java`、`javac`、`keytool`。用 `JAVA_HOME` 指定 JDK 根目录，或安装在系统可发现的位置。
- macOS arm64/x86_64 或 Linux x86_64。Windows 构建支持待完善。
- 首次构建需要访问 Maven、Google R8 和 Gradle 官方下载地址。

```sh
git clone https://github.com/my-bug/06Link.git
cd 06Link
python3 scripts/build.py
```

工具自动下载到 `tooling/cache/`，并按 `tooling/manifest.json` 核对 SHA-256。可先检查环境：

```sh
python3 scripts/toolchain.py --verify
python3 scripts/build.py --check-inputs
```

下载完成后，可用 `python3 scripts/build.py --offline` 离线构建。`SIXLINK_TOOLCHAIN_CACHE` 用于指定工具缓存目录。

## 调试版与正式版

| 项目 | 默认调试版 | 正式版 |
| --- | --- | --- |
| 命令 | `python3 scripts/build.py` | `python3 scripts/build.py --variant release` |
| 输出 | `dist/06Link-<version>-debug.apk` | `dist/06Link-<version>.apk` |
| 签名 | 本机生成的调试签名 | 配置中指定的本地发布签名 |
| 私有认证文件 | 不读取、不打包 | 必须由维护者本地提供 |
| 启动与设置 | 可浏览 | 正常运行版本 |
| CarPlay 连接 | 明确提示无认证材料，不自动准备车机连接 | 依赖合法有效的本地认证材料与对应硬件 |

调试包与正式版的 applicationId 都是 `com.sixlink.car`，签名不同，不能直接覆盖安装。建议使用单独测试设备验证调试包。

调试签名保存在被 Git 忽略的 `.local/debug-signing/`，清理构建缓存不会删除它。丢失调试密钥后重建的包不能覆盖旧调试签名版本。

正式构建使用 `project.json` 指向的本地文件，仓库不提供内容：

```text
.private/
  06link-release.p12
  06link-release-password.txt
  runtime-assets/assets/offline-mfi/
    identity.pk8
    certificate.p7b
```

修改签名时，同步更新 alias 与证书 SHA-256；更换认证材料时，更新 `file_assets` 中对应文件的 SHA-256。签名密码从本地文件读取。构建会检查材料完整性，缺失时给出错误提示。密钥、密码和认证文件不应提交到仓库。

## Gradle 与 IDE

```sh
./gradlew assembleDebug
./gradlew assembleRelease
./gradlew check
./gradlew clean
```

Wrapper 固定 Gradle 版本和下载校验值。Gradle 的 `base` 插件任务调用同一份 Python 构建，`build` 默认构建并检查调试版；`clean` 只删除生成的 `build/`，不删除 `dist/`、私有文件或调试密钥。Python 命令不同的环境可传 `-Ppython=/path/to/python3`。

可以在 IDE 中编辑源码并执行上述 Gradle 任务，生成安装包后通过 ADB 安装。Android Studio 的直接运行、XML 布局预览和变体视图暂不支持。

## 正式修改入口

| 修改内容 | 文件/目录 |
| --- | --- |
| 版本、包名、源码分组与私有依赖位置 | `project.json` |
| E01 功能与原生界面 | `src/e01/` 中的 Java |
| 协议与连接核心 | `src/core/smali/classes*/` |
| 权限、组件声明 | `src/main/AndroidManifest.xml` |
| XML、字符串、图像 | `src/main/res/`；动态文案在 Java/Smali 中 |
| 稳定资源 ID | `src/main/resource-ids.txt` |
| 原车蓝牙兼容、显示时钟 | `src/oem-bluetooth/permanent/`、`src/display-clock/` |
| 原生库、固定运行元数据 | `src/main/jniLibs/`、`src/main/resources/` |

所有 Java 自动参与编译；`sources.java_dex` 指定类族所在 DEX，新 Java 默认进入 `classes2.dex`。同名类同时出现在 Java 与 Smali 中会报错。新资源经 aapt2 分配后，应审核生成的资源映射再补入源文件，不随意更改已有 ID。

## 构建与验证过程

1. 检查配置、源文件、当前变体和固定工具哈希。
2. 编译全部 Java，将编译输出转换为统一汇编输入。
3. 合并完整源码，检查重复类、E01 调用签名，从源码汇编各个 DEX，并核对指令/异常区间往返等价。
4. 从固定公开 Conscrypt 依赖生成依赖 DEX，编译 Manifest/XML，保持既有资源 ID。
5. 创建全新 APK，签名后再次核对所有打包内容与 v1/v2/v3 签名。

```sh
python3 scripts/check.py
python3 tests/test_rebuild.py
```

检查读取 `build/last-build.json` 指定的本次构建，不会误查残留正式包。中间输出分别在 `build/debug/`、`build/current/`，它们都不是源码编辑入口。源码集成契约位于 `tests/source_build/contracts.json`；有意改变行为时逐项复核更新。

离线测试用于检查代码行为，涉及车机硬件的功能还需实车验证。

## 正常 Git 更新

源码、构建配置、测试、工具锁和必要文档随功能修改一起提交。`.gitignore` 排除私有材料、构建输出和本地资料。

```sh
git status
git add src scripts tests project.json
git diff --cached --stat
git commit -m "Describe the source change"
git push
```
