import '../dart_server.dart';

final PrismaClient prisma = PrismaClient();

class AuthAPi {
  String? secret;
  AuthAPi({this.secret});

  Router get router {
    final router = Router();
    router.post('/register', (Request request) async {
      var payLoad = jsonDecode(await request.readAsString());
      var name = payLoad['name'];
      var userEmail = payLoad['email'];
      var password = payLoad['password'];
      final salt = generateSalt();
      final hashedPassword = hashPassword(password, salt);
      final newUser = await prisma.users
          .findUnique(where: UsersWhereUniqueInput(email: userEmail));
      if (newUser != null) {
        return Response.ok('User already exists',
            headers: {'Content-Type': 'application/json'});
      }
      final Users user = await prisma.users.create(
        data: UsersCreateInput(
          name: PrismaUnion.zero(name),
          email: userEmail,
          password: PrismaUnion.zero(hashedPassword),
          salt: PrismaUnion.zero(salt),
        ),
      );
      var userObject = jsonEncode(user);
      return Response.ok('User Created Succesfully: $userObject\n',
          headers: {'Content-Type': 'application/json'});
    });

//login the user
    router.post('/login', (Request request) async {
      final payload = await jsonDecode(await request.readAsString());
      final userEmail = payload['email'];
      final password = payload['password'];

      // Ensure email and password fields are present
      if (userEmail == null ||
          userEmail.isEmpty ||
          password == null ||
          password.isEmpty) {
        return Response(HttpStatus.badRequest,
            body: 'Please provide your email and password');
      }

      final user = await prisma.users
          .findUnique(where: UsersWhereUniqueInput(email: userEmail));
      if (user == null) {
        return Response.forbidden('Incorrect user and/or password');
      }

      final hashedPassword = hashPassword(password, user.salt.toString());
      if (hashedPassword != user.password.toString()) {
        return Response.forbidden('Incorrect user and/or password');
      }

      // Generate JWT and send with response
      final userId = user.id.toString();
      final token = generateJwt(userId, 'http;//localhost', secret!);

      return Response.ok(jsonEncode('Token: $token'),
          headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
    });
    return router;
  }
}
