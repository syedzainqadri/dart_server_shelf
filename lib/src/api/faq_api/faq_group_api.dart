import '/dart_server.dart';

class FaqGroupApi {
  Handler get router {
    final router = Router();
    //get all faq groups
    router.get('/', (Request request) async {
      var faqGroup = await prisma.faqGroup.findMany();
      var faqGroupObject = jsonEncode(faqGroup);
      return Response.ok('All Faq Groups are: $faqGroupObject\n', headers: {
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
      return Response.ok('Faq Group you asked for is: $faqGroupObject\n',
          headers: {
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
      return Response.ok('Faq Group is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update faqGroup
    router.put('/updateFaqGroup', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
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
      return Response.ok('Faq Group Updated is: $faqGroupObject\n', headers: {
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
      return Response.ok('Faq Group Deleted is: $faqGroupObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
