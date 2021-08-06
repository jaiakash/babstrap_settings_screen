import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

void main() {
  const MethodChannel channel = MethodChannel('babstrap_settings_screen');

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
    expect(await BabstrapSettingsScreen.platformVersion, '42');
  });
}