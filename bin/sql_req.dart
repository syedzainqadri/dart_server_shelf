import 'dart:convert';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dart_server/prisma_client.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:shelf/shelf.dart';

final PrismaClient prisma = PrismaClient();

class SqlHandler {
  // final MysqlConnectionController _connection = MysqlConnectionController();

  Future<Response> sqlHandler(Request request) async {
    try {
      final Users user = await prisma.users.create(
        data: UsersCreateInput(
          name: PrismaUnion.zero("Seven"),
          email: "seven@check.com",
          password: PrismaUnion.zero('abc123234'),
        ),
      );
      print(jsonEncode(user));
    } catch (e) {
      print(e.toString());
    } finally {
      await prisma.$disconnect();
    }
    /*
    final results = _connection.query('SELECT * FROM users');
    var list = [];
    for (var row in results.rows) {
      var map = row.assoc();
      list.add(jsonEncode(map));
    }
    */
    return Response.ok('db results: \n',
        headers: {'Content-Type': 'application/json'});
  }

  Future<Response> allUserHandler(Request request) async {
    try {
      final user = await prisma.users.findMany();
      print(jsonEncode(user));
    } catch (e) {
      print(e.toString());
    } finally {
      await prisma.$disconnect();
    }

    // final results = _connection.query('SELECT * FROM users');
    // var list = [];
    // for (var row in results.rows) {
    //   var map = row.assoc();
    //   list.add(jsonEncode(map));
    // }

    return Response.ok('db results: \n',
        headers: {'Content-Type': 'application/json'});
  }

  Future<Response> sqlPostHandler(Request request) async {
    print('posthit');
    final payLoad = jsonDecode(await request.readAsString());
    print(payLoad);
    final settings = await MySQLConnection.createConnection(
      host: '127.0.0.1',
      port: 3306,
      userName: 'dart',
      password: 'Dart_123',
      databaseName: 'dart',
    );
    await settings.connect();
    print('connected');
    final results = await settings.execute(
        'INSERT INTO users (name, address) VALUES (:name, :address)', payLoad);
    print(results.affectedRows);

    final result2 = await settings.execute('SELECT * FROM users');
    await settings.close();
    var list = [];
    for (var row in result2.rows) {
      var map = row.assoc();
      list.add(jsonEncode(map));
    }
    return Response.ok('db results: $list\n',
        headers: {'Content-Type': 'application/json'});
  }

  Future<Response> jwtTokenHandler(Request request) async {
    String token;

    final jwt = JWT(
      {
        'id': 123,
        'server': {
          'id': '3e4fc296',
          'loc': 'euw-2',
        }
      },
      issuer: 'https://github.com/jonasroussel/dart_jsonwebtoken',
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
    var jwtToken;
    final token = jsonDecode(await request.readAsString());
    print(token['token']);
    var tokenToString = token['token'];

    /* Verify */ {
      try {
        // Verify a token
        final jwt = JWT.verify(tokenToString, SecretKey('secret passphrase'));

        print('Payload: ${jwt.payload}');
        jwtToken = jwt.payload;
      } on JWTExpiredError {
        print('jwt expired');
      } on JWTError catch (ex) {
        print(ex.message); // ex: invalid signature
      }
    }
    return Response.ok('db results: $jwtToken\n',
        headers: {'Content-Type': 'application/json'});
  }
}
