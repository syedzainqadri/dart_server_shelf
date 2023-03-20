import '/dart_server.dart';

class AmenitiesApi {
  Handler get router {
    final router = Router();
    //get all amenities
    router.get('/', (Request request) async {
      try {
        var amenities = await prisma.amenities.findMany();
        var amenitiesObject = jsonEncode(amenities);
        return Response.ok(amenitiesObject, headers: {
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

    //get amenities by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var amenities = await prisma.amenities.findUnique(
          where: AmenitiesWhereUniqueInput(id: uid),
        );
        var amenitiesObject = jsonEncode(amenities);
        return Response.ok(amenitiesObject, headers: {
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

    //create amenities
    router.post('/createAmenity', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var name = payload['name'];
        var slug = payload['slug'];
        var description = payload['description'];
        var published = payload['published'];
        var categoryId = payload['categoryId'];
        var amenities = await prisma.amenities.create(
          data: AmenitiesCreateInput(
            name: name,
            slug: PrismaUnion.zero(slug),
            description: PrismaUnion.zero(description),
            published: published,
            category: CategoryCreateNestedOneWithoutAmenitiesInput(
              connect: CategoryWhereUniqueInput(id: categoryId),
            ),
          ),
        );
        var amenitiesObject = jsonEncode(amenities);
        return Response.ok(amenitiesObject, headers: {
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

    //update amenities
    router.put('/updateAmenity', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var name = payload['name'];
        var slug = payload['slug'];
        var description = payload['description'];
        var published = payload['published'];
        var categoryId = payload['categoryId'];
        var amenities = await prisma.amenities.update(
          where: AmenitiesWhereUniqueInput(id: id),
          data: AmenitiesUpdateInput(
            name: StringFieldUpdateOperationsInput(set$: name),
            slug: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(slug)),
            description: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(description)),
            published: BoolFieldUpdateOperationsInput(set$: published),
            category: CategoryUpdateOneRequiredWithoutAmenitiesNestedInput(
              update: CategoryUpdateWithoutAmenitiesInput(
                parentId: NullableIntFieldUpdateOperationsInput(
                    set$: PrismaUnion.zero(categoryId)),
              ),
            ),
          ),
        );
        var amenitiesObject = jsonEncode(amenities);
        return Response.ok(amenitiesObject, headers: {
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

    //delete amenities
    router.delete('/deleteAmenity/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var amenities = await prisma.amenities.delete(
          where: AmenitiesWhereUniqueInput(id: uid),
        );
        var amenitiesObject = jsonEncode(amenities);
        return Response.ok(amenitiesObject, headers: {
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
