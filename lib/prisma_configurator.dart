import 'package:orm/configure.dart';

/// Configure Prisma for production environment.
/// 
/// **NOTE**: The function name must be configurePrisma.
void configurePrisma(PrismaEnvironment environment) {
  environment['DATABASE_URL'] = r'mysql://root:root@localhost:3306/mysql';
}
