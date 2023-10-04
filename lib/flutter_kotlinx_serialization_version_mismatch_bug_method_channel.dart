import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_kotlinx_serialization_version_mismatch_bug_platform_interface.dart';

/// An implementation of [FlutterKotlinxSerializationVersionMismatchBugPlatform] that uses method channels.
class MethodChannelFlutterKotlinxSerializationVersionMismatchBug
    extends FlutterKotlinxSerializationVersionMismatchBugPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('flutter_kotlinx_serialization_version_mismatch_bug');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> useKotlinxSerialization() async {
    await methodChannel.invokeMethod<void>('useKotlinxSerialization');
  }
}
