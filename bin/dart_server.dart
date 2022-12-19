import 'dart:io';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'sql_req.dart';

SqlHandler sqlHandler = SqlHandler();

final app = Router()
  ..get('/', _rootHandler)
  ..get('/echo/<message>', _echoHandler)
  ..get('/sql', sqlHandler.sqlHandler)
  ..post('/post', sqlHandler.sqlPostHandler)
  ..get('/allUsers', sqlHandler.allUserHandler)
  ..get('/jwtToken', sqlHandler.jwtTokenHandler)
  ..post('/verifyToken', sqlHandler.verifyToken);

Response _rootHandler(Request request) {
  return Response.ok('Hello World!');
}

Response _echoHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}

void main(List<String> arguments) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = const Pipeline().addMiddleware(logRequests()).addHandler(app);

  await io.serve(handler, ip, port);
}
