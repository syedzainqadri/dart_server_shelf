import '/dart_server.dart';

class SubscriptionApi {
  //TODO: needs restructuring
  Handler get router {
    final router = Router();
    //get all subscription
    router.get('/', (Request request) async {
      var subscription = await prisma.subscription.findMany();
      var subscriptionObject = jsonEncode(subscription);
      return Response.ok('Post Is: $subscriptionObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get subscription by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var subscription = await prisma.subscription.findUnique(
        where: SubscriptionWhereUniqueInput(id: id),
      );
      var subscriptionObject = jsonEncode(subscription);
      return Response.ok('Post by ID Is: $subscriptionObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create subscription
    router.post('/createSubscription', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var amount = payload['amount'];
      var description = payload['description'];
      var status = payload['status'];
      var subscription = await prisma.subscription.create(
        data: SubscriptionCreateInput(
          title: title,
          amount: amount,
          description: PrismaUnion.zero(description),
          status: status,
        ),
      );
      var subscriptionObject = jsonEncode(subscription);
      return Response.ok('Post by ID Is: $subscriptionObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update subscription
    router.put('/updateSubscription', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var subscription = await prisma.subscription.update(
        where: SubscriptionWhereUniqueInput(id: id),
        data: SubscriptionUpdateInput(),
      );
      var subscriptionObject = jsonEncode(subscription);
      return Response.ok('Post by ID Is: $subscriptionObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete subscription
    router.delete('/deleteSubscription', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var subscription = await prisma.subscription.delete(
        where: SubscriptionWhereUniqueInput(id: id),
      );
      var subscriptionObject = jsonEncode(subscription);
      return Response.ok('Post by ID Is: $subscriptionObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
