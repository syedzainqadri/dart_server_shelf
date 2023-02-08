import 'package:orm/configure.dart';

/// Prisma development environment configurator.
void configurator(PrismaDevelopment development) {
  development.override('DATABASE_URL',
      r'mysql://doadmin:AVNS_x1TzzXT75yePLxPsDv8@db-mysql-nyc1-39825-do-user-13057874-0.b.db.ondigitalocean.com:25060/defaultdb');

  // You can override environment variable example:
  // development.override('DEBUG', 'true');

  // You can remove environment variable example:
  // development.remove('DEBUG');
}

/// Configure Prisma for development environment.
///
/// **NOTE**: Prisma development must is a executable.
///
/// The `main` function is a Dart executable file entrypoint.
void main() => PrismaDevelopment.server(configurator);
