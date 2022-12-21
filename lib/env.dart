import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'SECRET_KEY')
  static const secretKey = _Env.secretKey;
  @EnviedField(varName: 'DATABASE_URL')
  static const databaseUrl = _Env.databaseUrl;
}
