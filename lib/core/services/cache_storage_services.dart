import 'package:shared_preferences/shared_preferences.dart';

/// [CacheStorageServices] services express services related to storing variables in the cache
/// By defining a [_Keys] variable suitable for the value to be stored, and defining the following 4 methods,
/// you will be able to store any value in memory via these services.
/// 1- [setValue] to store value in cache
///    Future<void> setValue(String value) async => await _preferences?.setString(_Keys.value, value)
/// 2- [removeValue] to remove value from cache
///    Future<void> removeValue() async => await _preferences?.remove(_Keys.value);
/// 3- [value] to get value from cache
///    String? get value => _preferences?.getString(_Keys.value) ?? null;
/// 4- [hasValue] check if this variable stored or not
///    bool get hasValue => _preferences?.containsKey(_Keys.value) ?? false;
///
/// It is important to call [CacheStorageServices.init] in the main.dart file before the [runApp] function
/// await CacheStorageServices.init();

class CacheStorageServices {
  static CacheStorageServices? _instance;
  static SharedPreferences? _preferences;

  CacheStorageServices._();

  factory CacheStorageServices() => _instance ??= CacheStorageServices._();

  // should call init in your main before run app
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> deleteCached() async {
    await removeToken();
    await removeRefreshToken();
  }

  // handle store API user token in cache
  Future<void> setToken(String token) async =>
      await _preferences?.setString(_Keys.token, token);

  Future<void> removeToken() async => await _preferences?.remove(_Keys.token);

  bool get hasToken => _preferences?.containsKey(_Keys.token) ?? false;

  String get token => _preferences?.getString(_Keys.token) ?? 'no token';

  // Refresh token
  Future<void> setRefreshToken(String refreshToken) async =>
      await _preferences?.setString(_Keys.refreshToken, refreshToken);

  Future<void> removeRefreshToken() async =>
      await _preferences?.remove(_Keys.refreshToken);

  bool get hasRefreshToken =>
      _preferences?.containsKey(_Keys.refreshToken) ?? false;

  String get refreshToken =>
      _preferences?.getString(_Keys.refreshToken) ?? 'no Refresh Token';

  // language
  // Language
  Future<void> setLanguage(bool lang) async =>
      await _preferences?.setBool(_Keys.language, lang);

  Future<void> removeLanguage() async =>
      await _preferences?.remove(_Keys.language);

  bool get hasLanguage => _preferences?.containsKey(_Keys.language) ?? false;

  bool get language => _preferences?.getBool(_Keys.language) ?? true;

  Future<void> initCacheLanguage() async {
    if (hasLanguage) return;
    await setLanguage(true);
  }

  // TODO: add your other variables
  // others functions
  /// ...
}

class _Keys {
  static const String token = 'token';
  static const String refreshToken = 'refresh_token';
  static const String language = 'language';
}
