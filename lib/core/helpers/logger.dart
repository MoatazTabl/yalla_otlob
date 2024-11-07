class AppLogger
{
  AppLogger._privateConstructor();

  // The single instance of the class
  static final AppLogger _instance = AppLogger._privateConstructor();

  // Public getter to access the instance
  static AppLogger get instance => _instance;

}