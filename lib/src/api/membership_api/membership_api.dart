import '/dart_server.dart';

class MembershipApi {
  Handler get router {
    final router = Router();
    //TODO: needs restructuring
    //get all membership
    router.get('/', (Request request) async {
      var membership = await prisma.membership.findMany();
      var membershipObject = jsonEncode(membership);
      return Response.ok('Post Is: $membershipObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get membership by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var membership = await prisma.membership.findUnique(
        where: MembershipWhereUniqueInput(id: id),
      );
      var membershipObject = jsonEncode(membership);
      return Response.ok('Post by ID Is: $membershipObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create membership
    router.post('/createMembership', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var qty = payload['qty'];
      var membership = await prisma.membership.create(
        data: MembershipCreateInput(
          qty: qty,
        ),
      );
      var membershipObject = jsonEncode(membership);
      return Response.ok('Post by ID Is: $membershipObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update membership
    router.put('/updateMembership', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var qty = payload['qty'];
      var membership = await prisma.membership.update(
        where: MembershipWhereUniqueInput(id: id),
        data: MembershipUpdateInput(
          qty: qty,
        ),
      );
      var membershipObject = jsonEncode(membership);
      return Response.ok('Post by ID Is: $membershipObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete membership
    router.delete('/deleteMembership', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var membership = await prisma.membership.delete(
        where: MembershipWhereUniqueInput(id: id),
      );
      var membershipObject = jsonEncode(membership);
      return Response.ok('Post by ID Is: $membershipObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
