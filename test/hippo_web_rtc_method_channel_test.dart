import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hippo_web_rtc/hippo_web_rtc_method_channel.dart';

void main() {
  MethodChannelHippoWebRtc platform = MethodChannelHippoWebRtc();
  const MethodChannel channel = MethodChannel('hippo_web_rtc');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
