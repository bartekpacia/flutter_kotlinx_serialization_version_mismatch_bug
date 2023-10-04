import 'flutter_kotlinx_serialization_version_mismatch_bug_platform_interface.dart';

class FlutterKotlinxSerializationVersionMismatchBug {
  Future<String?> getPlatformVersion() {
    return FlutterKotlinxSerializationVersionMismatchBugPlatform.instance
        .getPlatformVersion();
  }

  Future<void> useKotlinxSerialization() {
    return FlutterKotlinxSerializationVersionMismatchBugPlatform.instance
        .useKotlinxSerialization();
  }
}
