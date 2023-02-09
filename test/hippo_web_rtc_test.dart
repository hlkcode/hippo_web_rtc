import 'package:flutter_test/flutter_test.dart';
import 'package:hippo_web_rtc/hippo_web_rtc_method_channel.dart';
import 'package:hippo_web_rtc/hippo_web_rtc_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHippoWebRtcPlatform
    with MockPlatformInterfaceMixin
    implements HippoWebRtcPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HippoWebRtcPlatform initialPlatform = HippoWebRtcPlatform.instance;

  test('$MethodChannelHippoWebRtc is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHippoWebRtc>());
  });

  test('getPlatformVersion', () async {
    // HippoWebRtc hippoWebRtcPlugin = HippoWebRtc();
    // MockHippoWebRtcPlatform fakePlatform = MockHippoWebRtcPlatform();
    // HippoWebRtcPlatform.instance = fakePlatform;
    //
    // expect(await hippoWebRtcPlugin.getPlatformVersion(), '42');
  });
}
