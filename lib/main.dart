// import 'package:dart_server/prisma_client.dart';

// final PrismaClient prisma = PrismaClient();

// void main() async {
//   try {
//     final User user = await prisma.user.create(
//       data: UserCreateInput(
//         name: PrismaUnion.zero("Seven"),
//         email: "seven@odroe.com",
//       ),
//     );
//     print(user.toJson());
//   } catch (e) {
//     print(e.toString());
//   } finally {
//     await prisma.$disconnect();
//   }
// }
