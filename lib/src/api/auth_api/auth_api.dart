// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings

import '/dart_server.dart';

final PrismaClient prisma = PrismaClient();

class AuthAPi {
  String? secret;
  AuthAPi({this.secret});

  Router get router {
    final router = Router();
    router.post('/register', (Request request) async {
      try {
        var payLoad = jsonDecode(await request.readAsString());
        print(payLoad);
        var userEmail = payLoad['email']; //email provided by the user
        var fcmToken = payLoad['fcmtoken']; //fcmToken provided by the user
        var password = payLoad['password']; //password provided by the user
        var role = payLoad['role'];
        Role roleEnum =
            Role.values.firstWhere((e) => e.toString() == 'Role.' + role);
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
            email: userEmail,
            fcmtoken: fcmToken,
            password: PrismaUnion.zero(hashedPassword),
            salt: PrismaUnion.zero(salt),
            role: roleEnum,
          ),
        );
        var userObject = jsonEncode(user);
        return Response.ok(userObject,
            headers: {'Content-Type': 'application/json'});
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

//login the user
    router.post('/login', (Request request) async {
      try {
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
        final tokenEncoded = jsonEncode(token);
        final userObject = jsonEncode(user);
        final userMap = <String, dynamic>{
          'id': user.id,
          'token': token,
          'email': user.email,
          'areaUnit': user.AreaUnit.name,
          'fcmToken': user.fcmtoken,
          'role': user.role.name,
          'preferencesEmailNotification': user.preferencesEmailNotification,
          'preferencesNewsletter': user.preferencesNewsletter,
          'preferencesAutomatedReport': user.preferencesAutomatedReport,
          'memberSince': user.createdAt.toString(),
        };

        var userBody = jsonEncode(userMap);

        return Response.ok(userBody, headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });
    return router;
  }
}
