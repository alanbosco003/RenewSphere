enum AppEnvironment {
  local(Environment(
    url: 'https://stage13.lendingkart.com',
    showLog: false,
    apiVersion: '',
  )),
  prod(Environment(
    url: 'https://api.base_flutter.net',
    showLog: false,
    apiVersion: '/v1',
  )),
  stag(Environment(
    url: 'https://api.stag.base_flutter.net',
    showLog: true,
    apiVersion: '/v1',
  )),
  test(Environment(
    url: 'https://api.test.base_flutter.net',
    showLog: true,
    apiVersion: '/v1',
  )),
  dev(Environment(
    url: 'https://api.dev.base_flutter.net',
    showLog: true,
    apiVersion: '/v1',
  )),
  dummy(Environment(
    url: 'https://api.slingacademy.com',
    showLog: true,
    apiVersion: '/v1',
  ));

  const AppEnvironment(this.environment);

  final Environment environment;
  static bool showLog = true;
  static AppEnvironment _currentEnvironments = AppEnvironment.local;

  static Environment get currentEnv => _currentEnvironments.environment;

  static void setCurrentEnvironment(AppEnvironment env, {bool showLog = true}) {
    _currentEnvironments = env;
    showLog = true;
  }
}

class Environment {
  const Environment(
      {required this.url, required this.showLog, required this.apiVersion});

  final String url;
  final bool showLog;
  final String apiVersion;
}

/// https://api.slingacademy.com/v1/sample-data/photos