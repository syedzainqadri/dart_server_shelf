import 'dart:convert';
import 'package:mysql_client/mysql_client.dart';
import 'package:shelf/shelf.dart';

class SqlHandler {
  Future<Response> sqlHandler(Request request) async {
    final settings = await MySQLConnection.createConnection(
      host: '127.0.0.1',
      port: 3306,
      userName: 'dart',
      password: 'Dart_123',
      databaseName: 'dart',
    );
    await settings.connect();
    print('connected');
    final results = await settings.execute('SELECT * FROM users');
    await settings.close();
    var list = [];
    for (var row in results.rows) {
      var map = row.assoc();
      list.add(jsonEncode(map));
    }
    return Response.ok('db results: $list\n',
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
    await settings.close();
    var list = [];
    for (var row in results.rows) {
      var map = row.assoc();
      list.add(jsonEncode(map));
    }
    return Response.ok('db results: $list\n',
        headers: {'Content-Type': 'application/json', 'Authentication': '123'});
  }
}
