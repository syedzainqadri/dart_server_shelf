import '/dart_server.dart';

class PostContactApi {
  Handler get router {
    final router = Router();
    //get all postContact
    router.get('/', (Request request) async {
      try {
        var postContact = await prisma.postContact.findMany();
        var postContactObject = jsonEncode(postContact);
        return Response.ok(postContactObject, headers: {
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

    //get postContact by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postContact = await prisma.postContact.findUnique(
          where: PostContactWhereUniqueInput(id: uid),
        );
        var postContactObject = jsonEncode(postContact);
        return Response.ok(postContactObject, headers: {
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

    //get postContact by post id
    router.get('/post/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postContact = await prisma.postContact.findMany(
          where: PostContactWhereInput(
            post: PostListRelationFilter(
              every: PostWhereInput(
                id: IntFilter(equals: uid),
              ),
            ),
          ),
        );
        var postContactObject = jsonEncode(postContact);
        return Response.ok(postContactObject, headers: {
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

    //create postContact
    router.post('/createPostContact', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var name = payload['name'];
        var email = payload['email'];
        var phone = payload['phone'];
        var contactPersonType = payload['contactPersonType'];
        CcontactPersonType contactPersonEnum = CcontactPersonType.values
            .firstWhere((e) =>
                e.toString() == 'CcontactPersonType.' + contactPersonType);
        var landLine = payload['landLine'];
        var postId = payload['postId'];
        var postContact = await prisma.postContact.create(
          data: PostContactCreateInput(
            name: PrismaUnion.zero(name),
            email: PrismaUnion.zero(email),
            phone: PrismaUnion.zero(phone),
            landLine: PrismaUnion.zero(landLine),
            ccontactPersonType: contactPersonEnum,
          ),
        );
        var postContactObject = jsonEncode(postContact);
        return Response.ok(postContactObject, headers: {
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

    //update postContact
    router.put('/updatePostContact', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['contactPersonId'].toInt();
        var name = payload['name'];
        var email = payload['email'];
        var phone = payload['phone'];
        var contactPersonType = payload['contactPersonType'];
        CcontactPersonType contactPersonEnum = CcontactPersonType.values
            .firstWhere((e) =>
                e.toString() == 'CcontactPersonType.' + contactPersonType);
        var landLine = payload['landLine'];
        var postContact = await prisma.postContact.update(
          where: PostContactWhereUniqueInput(id: id),
          data: PostContactUpdateInput(
            name: NullableStringFieldUpdateOperationsInput(set$: name),
            phone: NullableStringFieldUpdateOperationsInput(set$: phone),
            landLine: NullableStringFieldUpdateOperationsInput(set$: landLine),
            email: NullableStringFieldUpdateOperationsInput(set$: email),
            ccontactPersonType:
                EnumCcontactPersonTypeFieldUpdateOperationsInput(
                    set$: contactPersonEnum),
          ),
        );
        var postContactObject = jsonEncode(postContact);
        return Response.ok(postContactObject, headers: {
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

    //delete postContact
    router.delete('/deletePostContact/<id>',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postContact = await prisma.postContact.delete(
          where: PostContactWhereUniqueInput(id: uid),
        );
        var postContactObject = jsonEncode(postContact);
        return Response.ok(postContactObject, headers: {
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
