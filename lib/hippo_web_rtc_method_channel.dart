import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hippo_web_rtc_platform_interface.dart';

/// An implementation of [HippoWebRtcPlatform] that uses method channels.
class MethodChannelHippoWebRtc extends HippoWebRtcPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('FlutterWebRTC');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
