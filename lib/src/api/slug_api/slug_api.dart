// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class SlugApi {
  Handler get router {
    final router = Router();
    //get all slug
    router.get('/', (Request request) async {
      try {
        var slug = await prisma.slug.findMany();
        var slugObject = jsonEncode(slug);
        return Response.ok(slugObject, headers: {
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

    //get slug by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var slug = await prisma.slug.findUnique(
          where: SlugWhereUniqueInput(id: uid),
        );
        var slugObject = jsonEncode(slug);
        return Response.ok(slugObject, headers: {
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

    //create slug
    router.post('/createSlug', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var slugName = payload['slug'];
        var type = payload['type'];
        SlugType typeEnum = SlugType.values
            .firstWhere((e) => e.toString() == 'SlugType.' + type);
        var referenceId = payload['referenceId'];
        var slug = await prisma.slug.create(
          data: SlugCreateInput(
            slug: slugName,
            type: typeEnum,
            referenceId: referenceId,
          ),
        );
        var slugObject = jsonEncode(slug);
        return Response.ok(slugObject, headers: {
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

    //update slug
    router.put('/updateSlug', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var slugName = payload['slug'];
        var type = payload['type'];
        SlugType typeEnum = SlugType.values
            .firstWhere((e) => e.toString() == 'SlugType.' + type);
        var referenceId = payload['referenceId'];

        var slug = await prisma.slug.update(
          where: SlugWhereUniqueInput(id: id),
          data: SlugUpdateInput(
            slug: StringFieldUpdateOperationsInput(set$: slugName),
            type: EnumSlugTypeFieldUpdateOperationsInput(set$: typeEnum),
            referenceId: IntFieldUpdateOperationsInput(set$: referenceId),
          ),
        );
        var slugObject = jsonEncode(slug);
        return Response.ok(slugObject, headers: {
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

    //delete slug
    router.delete('/deleteSlug', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var slug = await prisma.slug.delete(
          where: SlugWhereUniqueInput(id: uid),
        );
        var slugObject = jsonEncode(slug);
        return Response.ok(slugObject, headers: {
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
