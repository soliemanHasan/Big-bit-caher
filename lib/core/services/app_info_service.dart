import '../utils/print_log.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  static AppInfoService? _instance;
  AppInfoService._();
  factory AppInfoService() => _instance ??= AppInfoService._();

  PackageInfo? _packageInfo;

  Future<void> initInfo() async {
    _packageInfo = await PackageInfo.fromPlatform();
    printLog(_packageInfo?.packageName);
  }

  String? get version => _packageInfo?.version;
}
