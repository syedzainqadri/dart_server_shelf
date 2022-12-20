import 'dart:io';
import 'package:dart_server/src/auth_api.dart';
import 'package:dart_server/src/utils.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'sql_handlers.dart';

SqlHandler sqlHandler = SqlHandler();

final app = Router()..get('/allUsers', sqlHandler.allUserHandler);

void main(List<String> arguments) async {
  const secret = '098097989798807';
  app.mount('/auth/', AuthAPi(secret: secret).router);
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(handleAuth(secret))
      .addHandler(app);

  await io.serve(handler, ip, port);
}
