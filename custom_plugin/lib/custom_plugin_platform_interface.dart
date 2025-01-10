import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'customplugin_method_channel.dart';

abstract class CustomPluginPlatform extends PlatformInterface {
  /// Constructs a CustomPluginPlatform.
  CustomPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomPluginPlatform _instance = MethodChannelCustomPlugin();

  /// The default instance of [CustomPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomPlugin].
  static CustomPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CustomPluginPlatform] when
  /// they register themselves.
  static set instance(CustomPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<String>> getListOfMockApps() {
    throw UnimplementedError('getListOfMockApps() has not been implemented.');
  }
}
