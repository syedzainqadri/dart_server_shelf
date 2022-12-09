import 'dart:convert';
import 'package:dart_server/prisma_client.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:shelf/shelf.dart';

import 'config/MysqlConnectionController.dart';

final PrismaClient prisma = PrismaClient();

class SqlHandler {
  final MysqlConnectionController _connection = MysqlConnectionController();

  Future<Response> sqlHandler(Request request) async {
    try {
      final Users user = await prisma.users.create(
        data: UsersCreateInput(
          name: PrismaUnion.zero("Seven"),
          email: "seven@odroe.com",
        ),
      );
      print(user.toJson());
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
}
