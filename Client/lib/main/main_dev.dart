import 'environment.dart';
import 'main_common.dart' as common;

void main() {
  EnvironmentSettings.create(
    apiUrl: 'https://localhost:49001',
    environment: Environments.Dev,
  );

  common.main();
}
