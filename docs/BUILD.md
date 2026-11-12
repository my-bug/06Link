# 从源码构建 06Link

正常构建直接读取本仓库的 Java、Smali、XML 和列明的运行依赖。不需要旧应用 APK、反编译缓存、原车固件或另一份公开工程。

## 环境与第一次构建

- Python 3.11 或更新版本，仅使用标准库。
- 完整 JDK 17，需包含 `java`、`javac`、`keytool`。用 `JAVA_HOME` 指定 JDK 根目录，或安装在系统可发现的位置。
- macOS arm64/x86_64，或 Linux x86_64。Windows 暂无对应的已锁定 aapt2 原生工具，不能只凭附带 `gradlew.bat` 宣称支持。
- 首次构建需要访问 Maven、Google R8 和 Gradle 官方下载地址。

```sh
git clone https://github.com/my-bug/06Link.git
cd 06Link
python3 scripts/build.py
```

自动下载的工具保存在 `tooling/cache/`，逐项核对 `tooling/manifest.json` 中的 SHA-256。不存在对开发者电脑目录、已安装游戏启动器或私有 Maven 缓存的依赖。可先单独检查环境：

```sh
python3 scripts/toolchain.py --verify
python3 scripts/build.py --check-inputs
```

下载完成后，可用 `python3 scripts/build.py --offline` 明确禁止联网。`SIXLINK_TOOLCHAIN_CACHE` 可指定另一缓存目录；它只能改变缓存位置，不能绕过哈希核对。

## 调试版与正式版

| 项目 | 默认调试版 | 正式版 |
| --- | --- | --- |
| 命令 | `python3 scripts/build.py` | `python3 scripts/build.py --variant release` |
| 输出 | `dist/06Link-<version>-debug.apk` | `dist/06Link-<version>.apk` |
| 签名 | 本机生成的调试签名 | 配置中指定的本地发布签名 |
| 私有认证文件 | 不读取、不打包 | 必须由维护者本地提供 |
| 启动与设置 | 可浏览 | 正常运行版本 |
| CarPlay 连接 | 明确提示无认证材料，不自动准备车机连接 | 依赖合法有效的本地认证材料与对应硬件 |

调试包与正式版的 applicationId 都是 `com.sixlink.car`，避免破坏继承代码中的固定组件地址；签名不同，因此不能直接覆盖安装。推荐在单独测试设备验证调试包，不要为了安装它删除车上正在使用的正式版。

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

修改签名身份时同步配置 alias 和证书 SHA-256；使用自己的合法认证材料时，也需更新 `file_assets` 中对应文件的 SHA-256。不要把材料内容写进配置或提交。不能只替换密钥文件而保留另一证书指纹。签名密码由文件读取，不作为命令行参数打印。缺少正式版所需材料时，构建会提前报错，不会降级为另一签名再冒充正式版。

## Gradle 与 IDE

```sh
./gradlew assembleDebug
./gradlew assembleRelease
./gradlew check
./gradlew clean
```

Wrapper 固定 Gradle 版本和下载校验值。Gradle 的 `base` 插件任务调用同一份 Python 构建，`build` 默认构建并检查调试版；`clean` 只删除生成的 `build/`，不删除 `dist/`、私有文件或调试密钥。Python 命令不同的环境可传 `-Ppython=/path/to/python3`。

这是完整保存当前实现的 Java/Smali 混合 Android 应用工程，**没有伪装成已恢复所有上游 Java/Kotlin 的 AGP 项目**。可以在 IDE 中编辑源码、执行 Gradle 任务；Android Studio 的 Android Run、XML 布局预览和原生 AGP 变体模型尚未接入。后续若迁移到 AGP，应按完整类族和资源链路验证，不能放一个空 Android 模块再向 APK 注入旧 DEX。

## 正式修改入口

| 修改内容 | 文件/目录 |
| --- | --- |
| 版本、包名、源码分组与私有依赖位置 | `project.json` |
| E01 功能与原生界面 | `src/e01/` 中的 Java |
| 协议核心及未恢复 Java 的类 | `src/core/smali/classes*/` |
| 权限、组件声明 | `src/main/AndroidManifest.xml` |
| XML、字符串、图像 | `src/main/res/`；动态文案在 Java/Smali 中 |
| 稳定资源 ID | `src/main/resource-ids.txt` |
| 原车蓝牙兼容、显示时钟 | `src/oem-bluetooth/permanent/`、`src/display-clock/` |
| 原生库、固定运行元数据 | `src/main/jniLibs/`、`src/main/resources/` |

所有 Java 自动参与编译；`sources.java_dex` 指定类族所在 DEX，新 Java 默认进入 `classes2.dex`。同名类同时出现在 Java 与 Smali 中会报错。新资源经 aapt2 分配后，应审核生成的资源映射再补入源文件，不随意更改已有 ID。

## 构建与验证过程

1. 检查配置、源文件、当前变体和固定工具哈希。
2. 编译全部 Java，再将本次编译输出转换为统一汇编输入；没有读取旧应用 DEX。
3. 合并完整源码，检查重复类、E01 调用签名，从源码汇编各个 DEX，并核对指令/异常区间往返等价。
4. 从固定公开 Conscrypt 依赖生成依赖 DEX，编译 Manifest/XML，保持既有资源 ID。
5. 创建全新 APK，签名后再次核对所有打包内容与 v1/v2/v3 签名。

```sh
python3 scripts/check.py
python3 tests/test_rebuild.py
```

检查读取 `build/last-build.json` 指定的本次构建，不会误查残留正式包。中间输出分别在 `build/debug/`、`build/current/`，它们都不是源码编辑入口。源码集成契约位于 `tests/source_build/contracts.json`；有意改变行为时逐项复核更新。

首次源码迁移的旧 APK 等价审核由 `scripts/verify_source_migration.py` 单独负责，只有显式提供本地对照包才可执行，不是他人克隆后构建的前提。离线编译和回归通过不代替实车验证。

## 正常 Git 更新

只维护这一份项目。源码、构建、测试、工具锁和必要文档一起提交，私有文件与无关本地目录由 `.gitignore` 排除。不需要导出脚本、第二份项目、复制目录或每次删改认证文件。

```sh
git status
git add src scripts tests project.json
git diff --cached --stat
git commit -m "Describe the source change"
git push
```
