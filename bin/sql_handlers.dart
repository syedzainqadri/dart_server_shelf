import 'dart:convert';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dart_server/prisma_client.dart';
import 'package:shelf/shelf.dart';

final PrismaClient prisma = PrismaClient();

class SqlHandler {
  Future<Response> createUserHandler(
    Request request,
  ) async {
    String? jwtToken = request.headers['x-api-key'];
    String? responseValue;
    final jwt = JWT.decode(jwtToken!);
    print(jwt.payload);
    if (jwt.payload['id'] == 123) {
      var payLoad = jsonDecode(await request.readAsString());
      var name = payLoad['name'];
      var email = payLoad['email'];
      var password = payLoad['password'];
      try {
        final Users user = await prisma.users.create(
          data: UsersCreateInput(
            name: PrismaUnion.zero(name),
            email: email,
            password: PrismaUnion.zero(password),
          ),
        );
        print(jsonEncode(user));
        responseValue = jsonEncode(user);
      } catch (e) {
        print(e.toString());
        responseValue = e.toString();
      } finally {
        await prisma.$disconnect();
      }
      return Response.ok('response: $responseValue\n',
          headers: {'Content-Type': 'application/json'});
    } else {
      return Response.ok('response: InValid Api key $responseValue\n',
          headers: {'Content-Type': 'application/json'});
    }
  }

  Future<Response> allUserHandler(Request request) async {
    String? jwtToken = request.headers['x-api-key'];
    String? responseValue;
    final jwt = JWT.decode(jwtToken!);
    if (jwt.payload['id'] == 123) {
      try {
        final user = await prisma.users.findMany();
        print(jsonEncode(user));
        responseValue = jsonEncode(user);
      } catch (e) {
        print(e.toString());
      } finally {
        await prisma.$disconnect();
      }
      return Response.ok('db results: $responseValue\n',
          headers: {'Content-Type': 'application/json'});
    } else {
      return Response.ok('response: InValid Api key $responseValue\n',
          headers: {'Content-Type': 'application/json'});
    }
  }

  Future<Response> jwtTokenHandler(Request request) async {
    String token;

    final jwt = JWT(
      {
        'id': 134,
        'server': {
          'id': '3e4fc296',
          'loc': 'euw-2',
        }
      },
      issuer: 'https://example.com',
    );

    // Sign it
    token = jwt.sign(SecretKey('secret passphrase'));

    print('Signed token: $token\n');

    // final jwt = JWT.verify(token, SecretKey('secret passphrase'));
    // print('Verified token: $jwt\n');
    // return Response.ok('db results: $jwt\n',
    //     headers: {'Content-Type': 'application/json'});
    return Response.ok('db results: $token\n',
        headers: {'Content-Type': 'application/json'});
  }

  Future<Response> verifyToken(Request request) async {
    bool verified;
    String? jwtToken = request.headers['x-api-key'];
    print(jwtToken);
    final jwt = JWT.decode(jwtToken!);
    // final jwt = JWT.verify(jwtToken!, SecretKey('secret passphrase'));

    print('Payload: ${jwt.payload}');
    if (jwt.payload['server']['id'] == '3e4fc296' &&
        jwt.payload['server']['loc'] == 'euw-2' &&
        jwt.payload['iss'] == 'https://example.com') {
      print('verified');
      verified = true;
    } else {
      print('not verified');
      verified = false;
    }

    return Response.ok('db results: $verified\n',
        headers: {'Content-Type': 'application/json'});
  }
}
