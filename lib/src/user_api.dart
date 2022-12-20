import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import '../dart_server.dart';

class UserApi {
  Handler get router {
    final router = Router();
    router.get('/', (Request request) async {
      final authDetails = request.context['authDetails'] as JWT;
      var users = await prisma.users.findMany();
      var usersObject = jsonEncode(users);
      return Response.ok('All Users: $usersObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });
    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
