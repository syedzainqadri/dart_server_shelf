import 'package:orm/configure.dart';

/// Prisma development environment configurator.
void configurator(PrismaDevelopment development) {
  development.override('DATABASE_URL',
      r'mysql://ghroundadb:xB8O1_QY;6FV;z(V0x:~LZ9n,zvG2F1!@ls-ba76fa0894e6f74cd1b6ced47e42e03f256d4e73.cxipqwqmjllh.ap-southeast-1.rds.amazonaws.com:3306/dbghrounda');

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
