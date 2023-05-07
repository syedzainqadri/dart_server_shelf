import 'package:orm/configure.dart';

// / Configure Prisma for production environment.
///
/// **NOTE**: The function name must be configurePrisma.
void configurePrisma(PrismaEnvironment environment) {
  environment['DATABASE_URL'] =
      r'mysql://admin:Ghrounda_123@ghrounda-database.cnlt1am4mrxg.us-east-2.rds.amazonaws.com:3306/ghrounda';
}
