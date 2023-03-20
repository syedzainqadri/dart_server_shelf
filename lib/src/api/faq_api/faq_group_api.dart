import '/dart_server.dart';

class FaqGroupApi {
  Handler get router {
    final router = Router();
    //get all faq groups
    router.get('/', (Request request) async {
      try {
        var faqGroup = await prisma.faqGroup.findMany();
        var faqGroupObject = jsonEncode(faqGroup);
        return Response.ok(faqGroupObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //get faqGroup by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var faqGroup = await prisma.faqGroup.findUnique(
          where: FaqGroupWhereUniqueInput(id: uid),
        );
        var faqGroupObject = jsonEncode(faqGroup);
        return Response.ok(faqGroupObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //create faqGroup
    router.post('/createFaqGroup', (Request request) async {
      try {
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
        return Response.ok(faqGroupObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //update faqGroup
    router.put('/updateFaqGroup', (Request request) async {
      try {
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
        return Response.ok(faqGroupObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //delete faqGroup
    router.delete('/deleteFaqGroup', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var faqGroup = await prisma.faqGroup.delete(
          where: FaqGroupWhereUniqueInput(id: id),
        );
        var faqGroupObject = jsonEncode(faqGroup);
        return Response.ok(faqGroupObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(body: 'Error is:\n $e', headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
