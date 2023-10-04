import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kotlinx_serialization_version_mismatch_bug/flutter_kotlinx_serialization_version_mismatch_bug.dart';
import 'package:flutter_kotlinx_serialization_version_mismatch_bug/flutter_kotlinx_serialization_version_mismatch_bug_platform_interface.dart';
import 'package:flutter_kotlinx_serialization_version_mismatch_bug/flutter_kotlinx_serialization_version_mismatch_bug_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterKotlinxSerializationVersionMismatchBugPlatform
    with MockPlatformInterfaceMixin
    implements FlutterKotlinxSerializationVersionMismatchBugPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterKotlinxSerializationVersionMismatchBugPlatform initialPlatform = FlutterKotlinxSerializationVersionMismatchBugPlatform.instance;

  test('$MethodChannelFlutterKotlinxSerializationVersionMismatchBug is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterKotlinxSerializationVersionMismatchBug>());
  });

  test('getPlatformVersion', () async {
    FlutterKotlinxSerializationVersionMismatchBug flutterKotlinxSerializationVersionMismatchBugPlugin = FlutterKotlinxSerializationVersionMismatchBug();
    MockFlutterKotlinxSerializationVersionMismatchBugPlatform fakePlatform = MockFlutterKotlinxSerializationVersionMismatchBugPlatform();
    FlutterKotlinxSerializationVersionMismatchBugPlatform.instance = fakePlatform;

    expect(await flutterKotlinxSerializationVersionMismatchBugPlugin.getPlatformVersion(), '42');
  });
}
