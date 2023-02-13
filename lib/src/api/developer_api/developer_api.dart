import '/dart_server.dart';

class DeveloperApi {
  Handler get router {
    final router = Router();
    //get all categories
    router.get('/', (Request request) async {
      var developer = await prisma.developer.findMany();
      var developerObject = jsonEncode(developer);
      return Response.ok('All Developers Are: $developerObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get category by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var developer = await prisma.developer.findUnique(
        where: DeveloperWhereUniqueInput(id: id),
      );
      var developerObject = jsonEncode(developer);
      return Response.ok('Developer you Asked for is: $developerObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //create developer
    router.post('/createDeveloper', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var name = payload['name'];
      var developer = await prisma.developer.create(
        data: DeveloperCreateInput(
          title: name,
        ),
      );
      var developerObject = jsonEncode(developer);
      return Response.ok('Developer Created: $developerObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update developer
    router.put('/updateDeveloper', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var name = payload['name'];
      var developer = await prisma.developer.update(
        where: DeveloperWhereUniqueInput(id: id),
        data: DeveloperUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: name),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var developerObject = jsonEncode(developer);
      return Response.ok('Develoepr updated Is: $developerObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete developer
    router.delete('/deleteDeveloper', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var develoepr = await prisma.developer.delete(
        where: DeveloperWhereUniqueInput(id: id),
      );
      var developerObject = jsonEncode(develoepr);
      return Response.ok('Developer Account Deleted Is: $developerObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
