import 'package:dart_server/dart_server.dart';

final app = Router();
void main(List<String> arguments) async {
  var secret = Env.secretKey;
  app.mount('/api', HelloWorldApi().router);
  app.mount('/auth', AuthAPi(secret: secret).router); //done
  app.mount('/users', UserApi().router); //done
  app.mount('/profile', ProfileApi().router);
  app.mount('/post', PostApi().router);
  app.mount('/category', CategoryApi().router); //done
  app.mount('/amenity', AmenitiesApi().router); //done
  app.mount('/agency', AgencyApi().router); //done
  app.mount('/blogCategory', BlogCategoryApi().router); //done
  app.mount('/blog', BlogApi().router); //done
  app.mount('/developer', DeveloperApi().router); //done
  app.mount('/faqGroup', FaqGroupApi().router); //done
  app.mount('/faq', FaqQuestionAnswerApi().router); //done
  app.mount('/floorPlan', FloorPlanApi().router); //done
  app.mount('/product', ProductApi().router);
  app.mount('/order', OrderApi().router);
  app.mount('/productOrder', OrderProductApi().router);
  app.mount('/forumPost', ForumPostApi().router); //done
  app.mount('/forumPostComment', ForumPostCommentApi().router); //done
  app.mount('/page', PageApi().router);
  app.mount('/projectNearByPlaces',
      ProjectNearByPlaceNearByPlacesApi().router); //done
  app.mount('/project', ProjectsApi().router); //done
  app.mount('/paymentMethod', PaymentMethodApi().router);
  app.mount('/slug', SlugApi().router);
  app.mount('/wishlist', WishListApi().router);

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


//ToDo: slug refrence id has to be auto incremented and unique