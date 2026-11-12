# 06Link · 零陆互联

面向 2020 款领克 06 E01 / BX11QJ（Android 5.1）的 CarPlay 与仪表互联应用，由本仓库持续维护。当前版本 **1.2.34**，版本号与包名统一在 [`project.json`](project.json) 管理。

支持原车蓝牙无线连接、有线 USB、仪表地图与原厂路口卡片、音乐与歌词卡片、方向盘按键、Siri、原车音频通道及连接设置。

## 克隆与构建

准备 **Python 3.11+、JDK 17**，设置 `JAVA_HOME` 或将完整 JDK 放入 `PATH`。在 macOS 或 Linux 上运行：

```sh
git clone https://github.com/my-bug/06Link.git
cd 06Link
python3 scripts/build.py
```

首次构建自动下载固定版本的公开工具，并核对 SHA-256。输出 **`dist/06Link-1.2.34-debug.apk`**，不需要旧应用 APK、原车备份、发布签名或 CarPlay 认证文件。

调试包可以启动、查看界面和设置；未包含私有认证材料时，连接入口会明确提示无法认证，不会自动操作原车蓝牙或热点。调试包使用本地生成的调试签名，**不能直接覆盖正式签名的安装版**。

也可以使用仓库内的 Gradle Wrapper，同样调用这一份 Python 构建实现：

```sh
./gradlew assembleDebug
./gradlew check
```

正式签名、认证材料、输出目录和验证方式见 [构建说明](docs/BUILD.md)。构建不会连接车机、启动模拟器或自动安装软件。GitHub CI 可手动运行，只构建和检查调试版，不发布 APK。

## 一个仓库，直接维护

本目录就是开发目录和 GitHub 仓库。后续直接修改源码、测试并提交，不再生成“公开源码副本”，也不从安装包抽取修改结果。

| 目录 | 内容 |
| --- | --- |
| `src/e01/` | E01 适配 Java 源码；全部参与编译 |
| `src/core/smali/` | 完整可编辑的其余运行代码，直接汇编生成 DEX |
| `src/main/` | Android Manifest、XML、图像、资源 ID、运行资源和原生依赖 |
| `src/oem-bluetooth/`、`src/display-clock/` | 当前蓝牙兼容组件与显示时钟实现 |
| `scripts/`、`tooling/` | Python 构建实现、工具版本锁、下载器、编译接口和签名工具源码 |
| `tests/` | 源码、行为及构建回归检查 |
| `docs/` | 随源码维护的构建和工程说明 |
| `.github/` | 持续集成与问题反馈模板 |

这个工程是 **Java + Smali + XML 的 Android 应用源码工程**。Gradle 提供真实构建任务，Python 是唯一的编译实现；目前不是恢复了全部上游 Kotlin/Java 的 Android Gradle Plugin 工程，Android Studio 的原生 Android Run、布局预览并未接入。部分原生库与原厂兼容组件以二进制依赖保留，来源范围见 [NOTICE](NOTICE.md)。

## 开发与私有文件

```sh
python3 scripts/build.py
python3 scripts/check.py
git add src scripts tests project.json
git commit -m "Describe the source change"
git push
```

`.private/`、本地调试密钥、工具缓存、`build/`、`dist/`、日志、设备备份、固件、研究素材和历史归档均由 `.gitignore` 排除。必要构建脚本、测试和工程文档随源码一起更新。详细约定见 [CONTRIBUTING](CONTRIBUTING.md) 和 [工程结构](docs/PROJECT_STRUCTURE.md)。

软件免费。请保留继承代码的许可证与来源说明；问题反馈时提供版本、车型、连接方式、复现步骤和脱敏日志，不要提交私钥、完整设备备份或认证文件。
