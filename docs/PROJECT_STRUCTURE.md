# 工程结构

仓库根目录就是实际开发目录。日常修改、构建和 GitHub 更新均在这里完成，没有另一份发布用源码树。

```text
06Link/
  src/
    e01/                  # 全部参与编译的适配 Java
    core/smali/           # 其余完整运行源码
    main/                 # Manifest / res / assets / jniLibs / resources
    oem-bluetooth/        # 当前原车蓝牙兼容组件与脚本
    display-clock/        # 当前显示时钟实现
  scripts/                # 正式构建、工具解析、离线检查
  tooling/
    manifest.json         # 公开工具版本、来源和哈希
    compile-stubs/        # 仅编译使用的接口，不进入 APK
    java/                 # 签名工具源码
  tests/                  # 行为测试、固定夹具、源码集成契约
  gradle/wrapper/         # 固定 Gradle 启动器
  .github/                # CI 与反馈模板
  docs/                   # 必要工程说明
  project.json            # 版本与输入配置
  build.gradle            # 调用 Python 的统一构建任务
  gradlew
```

构建方式和变量见 [BUILD.md](BUILD.md)。本工程保留 Java、Smali、XML 及列明的二进制运行依赖；不能将其描述为全部恢复成原始 Java/Kotlin 的 AGP 项目。

下列目录只在维护者本地存在，不参与 GitHub 更新：

| 目录 | 用途 |
| --- | --- |
| `.private/` | 发布签名与私有认证材料 |
| `.local/` | 本机调试密钥等本地配置 |
| `tooling/cache/`、`.gradle/`、`build/` | 可重建的工具与构建缓存 |
| `dist/`、`releases/` | 安装包和发布留档 |
| `validation/`、`backups/` | 实车原始记录、原车组件和设备备份 |
| `references/`、`design/`、`experiments/` | 研究输入、设计草案和历史实验 |
| `archive/` | 旧构建和过时脚本的本地归档 |
| `docs/` 中的历史报告 | 发布过程、原始设备信息与分析记录 |

维护者旧资料索引保存在本地 `archive/project-maintenance-20261112/PROJECT_STRUCTURE.md`；本次没有删除车辆原件、固件或原始日志。历史归档不参与当前构建，不应重新作为源码基线。
