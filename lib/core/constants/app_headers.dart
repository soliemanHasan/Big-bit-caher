import 'package:big_bite_casher/core/services/cache_storage_services.dart';

/// This class [AppHeaders] identifier represents the headers that can be sent to the server side
/// this class should have all headers in your application
/// [baseHeaders] expresses the base headers used to interact with the server side
///
/// You can also define which headers could be used in the application

class AppHeaders {
  static AppHeaders? _instance;
  AppHeaders._();
  factory AppHeaders() => _instance ??= AppHeaders._();

// TODO : customize your Header
  Map<String, String> get baseHeaders => {
        if (CacheStorageServices().hasToken)
          "Authorization": "Bearer ${CacheStorageServices().token}",
        "Content-Type": "application/json",
        "language": "en",
        "app": "android",
        "version": "1.2.0",
      };
}
