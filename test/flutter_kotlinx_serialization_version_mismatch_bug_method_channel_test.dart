import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kotlinx_serialization_version_mismatch_bug/flutter_kotlinx_serialization_version_mismatch_bug_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFlutterKotlinxSerializationVersionMismatchBug platform = MethodChannelFlutterKotlinxSerializationVersionMismatchBug();
  const MethodChannel channel = MethodChannel('flutter_kotlinx_serialization_version_mismatch_bug');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
