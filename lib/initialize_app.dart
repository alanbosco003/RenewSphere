import 'package:services/data_providers/data_providers.dart';
import 'package:base_flutter/infrastructure/environment/app_environment.dart';

Future<void> initializeApp() async {
  AppEnvironment.setCurrentEnvironment(
    AppEnvironment.local, // SET THE STAGE
    showLog: true,
  );
  InternetConnectionManager.instance.initialize();
  await LocalStorage.instance.initialize();
  RestApi.instance.initialize(
    baseUrl: AppEnvironment.currentEnv.url,
    showApiLog: true,
    apiVersion: AppEnvironment.currentEnv.apiVersion,
  );
}
