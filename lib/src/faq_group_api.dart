import '../dart_server.dart';

class FaqGroupApi {
  //TODO: sort order is not required
  Handler get router {
    final router = Router();
    //get all faq groups
    router.get('/', (Request request) async {
      var faqGroup = await prisma.faqGroup.findMany();
      var faqGroupObject = jsonEncode(faqGroup);
      return Response.ok('Post Is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get faqGroup by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var faqGroup = await prisma.faqGroup.findUnique(
        where: FaqGroupWhereUniqueInput(id: id),
      );
      var faqGroupObject = jsonEncode(faqGroup);
      return Response.ok('Post by ID Is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create faqGroup
    router.post('/createFaqGroup', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var faqGroupName = payload['faqGroupName'];
      var sortOrder = payload['sortOrder'];
      var status = payload['status'];
      var faqGroup = await prisma.faqGroup.create(
        data: FaqGroupCreateInput(
          faqGroupName: faqGroupName,
          sortOrder: sortOrder,
          status: status,
        ),
      );
      var faqGroupObject = jsonEncode(faqGroup);
      return Response.ok('Post by ID Is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update faqGroup
    router.put('/updateFaqGroup', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var faqGroupName = payload['faqGroupName'];
      var sortOrder = payload['sortOrder'];
      var status = payload['status'];
      var faqGroup = await prisma.faqGroup.update(
        where: FaqGroupWhereUniqueInput(id: id),
        data: FaqGroupUpdateInput(
          faqGroupName: StringFieldUpdateOperationsInput(set$: faqGroupName),
          sortOrder: IntFieldUpdateOperationsInput(set$: sortOrder),
          status: BoolFieldUpdateOperationsInput(set$: status),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var faqGroupObject = jsonEncode(faqGroup);
      return Response.ok('Post by ID Is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete faqGroup
    router.delete('/deleteFaqGroup', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var faqGroup = await prisma.faqGroup.delete(
        where: FaqGroupWhereUniqueInput(id: id),
      );
      var faqGroupObject = jsonEncode(faqGroup);
      return Response.ok('Post by ID Is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
