import 'dart:io';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'sql_handlers.dart';

SqlHandler sqlHandler = SqlHandler();

final app = Router()
  ..post('/createuser', sqlHandler.createUserHandler)
  ..get('/allUsers', sqlHandler.allUserHandler)
  ..get('/jwtToken', sqlHandler.jwtTokenHandler)
  ..post('/verifyToken', sqlHandler.verifyToken);

void main(List<String> arguments) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = const Pipeline().addMiddleware(logRequests()).addHandler(app);

  await io.serve(handler, ip, port);
}
