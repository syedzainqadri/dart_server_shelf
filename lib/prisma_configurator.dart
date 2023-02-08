import 'package:orm/configure.dart';

/// Configure Prisma for production environment.
///
/// **NOTE**: The function name must be configurePrisma.
void configurePrisma(PrismaEnvironment environment) {
  environment['DATABASE_URL'] =
      r'mysql://doadmin:AVNS_x1TzzXT75yePLxPsDv8@db-mysql-nyc1-39825-do-user-13057874-0.b.db.ondigitalocean.com:25060/defaultdb';
}
