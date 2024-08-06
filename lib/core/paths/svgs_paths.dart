// In this class, we will define the paths to the svgs in assets.
// Do not forget to add the paths to the files that contain the svgs in "pubspec.yaml" in line 63.
//
// Adding a new path to the class will be done using the following method
// static const String svgName = '$_baseSvgsPath/svg_name.svg';
//
// Using [SvgsPaths] with flutter_svg library
// by set path to [SvgPicture] widget
//
// Ex: SvgPicture.asset(_path),

// TODO: add svgs assets paths here

class SvgsPaths {
  static const String _baseSvgsPath = 'assets/svgs';
  static const String menu = '$_baseSvgsPath/menu.svg';
  static const String menuActive = '$_baseSvgsPath/menuActive.svg';
  static const String home = '$_baseSvgsPath/home.svg';
  static const String homeActive = '$_baseSvgsPath/homeActive.svg';
  static const String offer = '$_baseSvgsPath/offers.svg';
  static const String offersActive = '$_baseSvgsPath/offersActive.svg';
  static const String profile = '$_baseSvgsPath/profile.svg';
  static const String profileActive = '$_baseSvgsPath/profileActive.svg';
  static const String sendOtp = '$_baseSvgsPath/sendOtp.svg';
}
