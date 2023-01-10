import 'package:dart_server/dart_server.dart';

final app = Router();
void main(List<String> arguments) async {
  var secret = Env.secretKey;
  app.mount('/api', HelloWorldApi().router);
  app.mount('/auth', AuthAPi(secret: secret).router);
  app.mount('/users', UserApi().router);
  app.mount('/profile', ProfileApi().router);
  app.mount('/post', PostApi().router);
  app.mount('/category', CategoryApi().router);
  app.mount('/amenisties', AmenitiesApi().router);
  app.mount('/agency', AgencyApi().router);
  app.mount('/blogCategory', BlogCategoryApi().router);
  app.mount('/blog', BlogApi().router);
  app.mount('/developer', DeveloperApi().router);
  app.mount('/faqGroup', FaqGroupApi().router);
  app.mount('/faq', FaqQuestionAnswerApi().router);
  app.mount('/floorPlan', FloorPlanApi().router);
  app.mount('/product', ProductApi().router);
  app.mount('/order', OrderApi().router);
  app.mount('/productOrder', OrderProductApi().router);
  app.mount('/forumPost', ForumPostApi().router);
  app.mount('/forumPostComment', ForumPostCommentApi().router);
  app.mount('/page', PageApi().router);
  app.mount('/projectNearByPlaces', ProjectNearByPlaceNearByPlacesApi().router);

  //server configuration
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(handleCors())
      .addMiddleware(handleAuth(secret))
      .addHandler(app);

  await serve(handler, ip, port);
}
