<p align="center">
  <img src="src/main/res/drawable/ic_carplay.png" alt="06Link" width="112">
</p>

# 06Link

**为领克 06 E01 车机深度定制的 CarPlay 互联软件。**

06Link 将 iPhone 的 CarPlay 接入原车中控和仪表，围绕原车蓝牙、仪表显示、方向盘按键与音频通道进行适配。支持有线和无线连接，可在中控使用导航、音乐、通话与 Siri，并将地图和音乐信息显示到仪表。

**06Link 免费提供，请勿付费购买。**

## 适配范围

- **车型**：2020 款领克 06。
- **车机**：E01 / BX11QJ，Android 5.1。
- **手机**：支持 CarPlay 的 iPhone。

当前适配以这款车机为基础，其他车型和系统版本尚未纳入已验证范围。

## 主要功能

| 功能 | 说明 |
| --- | --- |
| 有线与无线连接 | 支持 USB 数据线连接；无线使用原车蓝牙与车机热点。可设置默认连接方式和自动连接，连接中显示当前步骤。 |
| 原车蓝牙兼容 | 提供开机兼容组件安装与原厂组件恢复入口，无线连接无需外置 USB 蓝牙接收器。 |
| 仪表地图 | 提供信息卡片、全屏地图、雾蓝仪表三种样式，支持预览、地图内容大小调整和可关闭的过场动画。地图布局针对原厂信息区域与导航居中进行适配。 |
| 导航与音乐卡片 | 将转向、路名、距离接入原厂路口卡片；音乐卡片显示歌曲、歌手、封面，以及音乐应用提供的歌词信息，可单独关闭。 |
| 方向盘按键与 Siri | 支持上一首／下一首、播放／暂停、语音键唤起 Siri，各项接管可独立开启或关闭；Siri 使用车机麦克风。 |
| 原车音频通道 | 音乐、导航、Siri、通话分别适配原车声道，支持播报期间的音量键调节与媒体混音处理。 |
| 显示与视频 | 提供分辨率、帧率和 MTK 低延迟等选项，针对 E01 的解码与显示输出进行适配。 |
| 界面与日志 | 统一首页、设置、连接状态和弹窗样式；日志可直接查看、分页和清空，跨重启保留，总量限制在 1 MB 以内。 |

## 版本与反馈

当前版本：**1.2.34**。

遇到问题可在 [Issues](https://github.com/my-bug/06Link/issues) 反馈，请说明软件版本、车机系统、iPhone 与 iOS 版本、有线或无线连接，以及具体操作和现象。需要时附上软件日志页面截图，并遮挡个人信息。

## 项目来源与引用

06Link 从早期 06Play 验证版本演进而来，基于 DiPlay 及其上游项目，持续加入领克 06 E01 的专用适配。感谢以下项目及其贡献者：

| 项目 | 与 06Link 的关系 |
| --- | --- |
| [DiPlay](https://github.com/shihabal3amri/DiPlay) | 基础应用来源，提供 CarPlay 连接、音视频与仪表副屏等实现基础。 |
| [xcertplay](https://github.com/shilapi/xcertplay) | DiPlay 的上游 CarPlay 接收器项目；06Link 继承相关协议实现，并参考其核心问题修复。 |
| [DiAuto](https://github.com/shihabal3amri/DiAuto) | DiPlay 早期界面的设计来源，保留相应来源与许可声明。 |
| [DiPlay-Preface](https://github.com/huangwits/DiPlay-Preface) | 原车蓝牙兼容流程的研究参考。 |
| [Conscrypt](https://github.com/google/conscrypt) | 用于旧 Android 系统的加密实现支持。 |

许可与第三方说明见 [LICENSE](LICENSE) 和 [NOTICE](NOTICE.md)。06Link 是独立社区适配项目；CarPlay 名称及相关商标归 Apple 所有。
