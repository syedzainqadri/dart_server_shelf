import 'dart:convert';
import 'dart:io';
import 'package:mysql_client/mysql_client.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final app = Router()
  ..get('/', _rootHandler)
  ..get('/echo/<message>', _echoHandler)
  ..get('/sql', _sqlHandler);

Response _rootHandler(Request request) {
  return Response.ok('Hello World!');
}

Response _echoHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}

Future<Response> _sqlHandler(Request request) async {
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
  var list = [];
  for (var row in results.rows) {
    var map = row.assoc();
    list.add(jsonEncode(map));
  }
  return Response.ok('db results: $list\n',
      headers: {'Content-Type': 'application/json'});
}

void main(List<String> arguments) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = const Pipeline().addMiddleware(logRequests()).addHandler(app);

  await io.serve(handler, ip, port);
}
