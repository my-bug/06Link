# 项目来源与第三方内容

06Link 从 FreeAuto / DiPlay 修改版及后续 06Play 修复演进而来，由本仓库维护者针对领克 06 E01 持续适配。06Link 应用身份是 `com.sixlink.car`；源码中的 `com.shilapi.xcertplay`、BYD 类名和历史标记保留实现来源，不代表官方领克、Apple 或上游发行版本。

DiPlay 上游：[shihabal3amri/DiPlay](https://github.com/shihabal3amri/DiPlay)。工程保留继承的 GNU GPL v3 许可证，见 `LICENSE`；新增维护不改变继承代码的作者归属。运行代码还包含 Kotlin、AndroidX 等第三方实现，相应许可证及运行元数据保存在源码资源内。

工程源码采用 Java、Smali 和 XML；Smali 实现承接此前已验证的应用版本。构建所需的原生库和其他运行依赖由项目配置列明。

`src/main/jniLibs/` 中的原生库与原厂 `gocsdk` 兼容组件以二进制形式提供，其版权和许可归各自权利人所有。Conscrypt 2.8.0 通过官方 Maven 来源取得并按固定哈希核对，其许可随依赖保留。构建工具的版本、官方下载位置和 SHA-256 在 `tooling/manifest.json` 中管理。

CarPlay 认证材料、发布签名和密码由维护者在本地配置，不随仓库分发。

连接与音频修复参考 DiPlay [#644](https://github.com/shihabal3amri/DiPlay/pull/644)、[#962](https://github.com/shihabal3amri/DiPlay/pull/962)、[#1057](https://github.com/shihabal3amri/DiPlay/pull/1057)、[#618](https://github.com/shihabal3amri/DiPlay/pull/618)、[#1148](https://github.com/shihabal3amri/DiPlay/pull/1148) 与 [#972](https://github.com/shihabal3amri/DiPlay/pull/972)，分别适配为有线启动恢复、音频时钟与解码缓冲处理、麦克风分包及服务发现。保留 06Link 的 E01 硬件适配。
