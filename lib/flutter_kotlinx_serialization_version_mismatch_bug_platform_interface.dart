import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kotlinx_serialization_version_mismatch_bug_method_channel.dart';

abstract class FlutterKotlinxSerializationVersionMismatchBugPlatform
    extends PlatformInterface {
  /// Constructs a FlutterKotlinxSerializationVersionMismatchBugPlatform.
  FlutterKotlinxSerializationVersionMismatchBugPlatform()
      : super(token: _token);

  static final Object _token = Object();

  static FlutterKotlinxSerializationVersionMismatchBugPlatform _instance =
      MethodChannelFlutterKotlinxSerializationVersionMismatchBug();

  /// The default instance of [FlutterKotlinxSerializationVersionMismatchBugPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKotlinxSerializationVersionMismatchBug].
  static FlutterKotlinxSerializationVersionMismatchBugPlatform get instance =>
      _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKotlinxSerializationVersionMismatchBugPlatform] when
  /// they register themselves.
  static set instance(
      FlutterKotlinxSerializationVersionMismatchBugPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
