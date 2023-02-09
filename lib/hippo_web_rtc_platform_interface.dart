import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hippo_web_rtc_method_channel.dart';

abstract class HippoWebRtcPlatform extends PlatformInterface {
  /// Constructs a HippoWebRtcPlatform.
  HippoWebRtcPlatform() : super(token: _token);

  static final Object _token = Object();

  static HippoWebRtcPlatform _instance = MethodChannelHippoWebRtc();

  /// The default instance of [HippoWebRtcPlatform] to use.
  ///
  /// Defaults to [MethodChannelHippoWebRtc].
  static HippoWebRtcPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HippoWebRtcPlatform] when
  /// they register themselves.
  static set instance(HippoWebRtcPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
