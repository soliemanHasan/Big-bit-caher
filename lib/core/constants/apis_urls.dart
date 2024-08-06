/// class [ApisUrls] contains all URLs to external services, services,
/// or APIs, according to the following figure
///
/// add new APIs URL in this way:
/// EX:  String get {verb}featureName => '$_baseApiUrl/{route}';
library;

class ApisUrls {
  static ApisUrls? _instance;
  ApisUrls._();
  factory ApisUrls() => _instance ??= ApisUrls._();

  // late String _baseUrl;

  // Future<void> initBaseUrl() async {
  //   try {
  //     final String contents = await rootBundle.loadString(
  //         'assets/config.json'); // TODO: also implement baseUrl in asset/config.json
  //     final Map<String, dynamic> data = json.decode(contents);
  //     final String baseUrl = data['baseUrl'];
  //     _baseUrl = baseUrl;
  //     printLog("Base URL: $_baseUrl");
  //   } catch (e) {
  //     printLog("Error in base url init: $e");
  //     _baseUrl = 'https://fakestoreapi.com'; // TODO: implement your url
  //   }
  // }

  /// [_baseUrl] base server url
  static const String _baseUrl = 'http://192.168.190.169:8000';

  /// [_baseApiUrl] base API url
  static const String _baseApiUrl = '$_baseUrl/api';

  /// [_baseImagesUrl] base Images Url
  String get _baseImagesUrl => '$_baseUrl';
  String baseImagesUrl(String url) => '$_baseImagesUrl/$url';

  /// Auth Feature APIs
  String get login => '$_baseApiUrl/auth/login';
  String get register => '$_baseApiUrl/auth/register';
  String get verifyCode => '$_baseApiUrl/auth/verify';
  String get resendCode => '$_baseApiUrl/auth/resendCode';
  String get refreshToken =>
      '$_baseApiUrl/auth/refreshToken'; // TODO: implement your refresh token end point

  /// news Feature APIs
  String get getNews => '$_baseApiUrl/post';
  //news details
  String showNewsDetails(int id) => '$_baseApiUrl/post/show/$id';

  /// fetch category
  String get fetchMenuCategories => '$_baseApiUrl/category/categories';
//fetch meal
  String getOrder(int page) => '$_baseApiUrl/order/quee?page=$page';

  //show meal details
  String showMealDetails(int id) => '$_baseApiUrl/meal/show/$id';
}
