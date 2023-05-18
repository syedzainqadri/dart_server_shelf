import 'package:orm/configure.dart';

// / Configure Prisma for production environment.
///
/// **NOTE**: The function name must be configurePrisma.
void configurePrisma(PrismaEnvironment environment) {
  environment['DATABASE_URL'] =
      r'mysql://ghroundadb:xB8O1_QY;6FV;z(V0x:~LZ9n,zvG2F1!@ls-ba76fa0894e6f74cd1b6ced47e42e03f256d4e73.cxipqwqmjllh.ap-southeast-1.rds.amazonaws.com:3306/dbghrounda';
}
