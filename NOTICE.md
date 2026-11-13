# 项目来源与第三方内容

06Link 从 FreeAuto / DiPlay 修改版及后续 06Play 修复演进而来，由本仓库维护者针对领克 06 E01 持续适配。06Link 应用身份是 `com.sixlink.car`；源码中的 `com.shilapi.xcertplay`、BYD 类名和历史标记保留实现来源，不代表官方领克、Apple 或上游发行版本。

DiPlay 上游：https://github.com/shihabal3amri/DiPlay 。工程保留继承的 GNU GPL v3 许可证，见 `LICENSE`；新增维护不改变继承代码的作者归属。运行代码还包含 Kotlin、AndroidX 等第三方实现，相应许可证及运行元数据保存在源码资源内。

从 1.2.34 开始，工程直接保存并编译 Java、Smali、XML 和列明的原生依赖，不以旧应用 APK 为构建输入。Smali 来自已验证运行版本的一次性迁移，不代表取得了全部上游 Kotlin/Java 或原生库源码。

`src/main/jniLibs/` 中的原生库、原厂 `gocsdk` 兼容组件为二进制依赖，未恢复其完整源码；其权利与来源不因本仓库 GPL 文件而改变，不应冒充本项目原创。Conscrypt 2.8.0 通过官方 Maven 来源取得并按固定哈希核对，其许可随依赖保留。构建工具的版本、官方下载位置和 SHA-256 在 `tooling/manifest.json` 中管理。

CarPlay 私有认证材料、发布签名和密码不在仓库内。默认调试包不具备这些私有身份，也不会尝试以发行者凭据认证。

本次连接与音频修复参考 DiPlay [#644](https://github.com/shihabal3amri/DiPlay/pull/644)、[#962](https://github.com/shihabal3amri/DiPlay/pull/962)、[#1057](https://github.com/shihabal3amri/DiPlay/pull/1057)、[#618](https://github.com/shihabal3amri/DiPlay/pull/618)、[#1148](https://github.com/shihabal3amri/DiPlay/pull/1148) 与 [#972](https://github.com/shihabal3amri/DiPlay/pull/972)，分别适配为有线启动恢复、音频时钟与解码缓冲处理、麦克风分包及服务发现。保留 06Link 的 E01 硬件适配。
