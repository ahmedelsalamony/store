import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum {
  development,
  production,
}

class EnvVarialbe {
  EnvVarialbe._();

  static final EnvVarialbe instance = EnvVarialbe._();

  String _envType = '';

  String get envType => _envType;

  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.development:
        _envType = 'dev';
        break;
      case EnvTypeEnum.production:
        _envType = 'production';
        break;
    }
    _envType = dotenv.get(
      'ENV_TYPE',
      fallback: _envType,
    );
  }
}
