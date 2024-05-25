enum Flavor { prod, dev }

class AppConfig {
  String baseUrl = "";
  String appName = "";
  Flavor flavor = Flavor.dev;

  AppConfig(this.appName, this.baseUrl, this.flavor);

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(appName, baseUrl, flavor);
  }
}
