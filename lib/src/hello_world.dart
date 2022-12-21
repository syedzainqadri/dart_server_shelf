import '../dart_server.dart';

class HelloWorldApi {
  Router get router {
    final router = Router();
    router.get('/', (Request request) async {
      return Response.ok('Hello World', headers: {
        'Content-Type': 'application/json',
      });
    });
    return router;
  }
}
