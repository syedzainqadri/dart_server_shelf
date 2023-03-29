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
        print(payload);
        var name = payload['name'];
        var description = payload['description'];
        var status = payload['status'];
        var icon = payload['icon'];
        var amenities = await prisma.amenities.create(
          data: AmenitiesCreateInput(
            name: name,
            description: PrismaUnion.zero(description),
            status: status,
            icon: PrismaUnion.zero(icon),
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
        var description = payload['description'];
        var status = payload['status'];
        var icon = payload['icon'];
        var amenities = await prisma.amenities.update(
          where: AmenitiesWhereUniqueInput(id: id),
          data: AmenitiesUpdateInput(
            name: StringFieldUpdateOperationsInput(set$: name),
            description: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(description)),
            status: BoolFieldUpdateOperationsInput(set$: status),
            icon: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(icon),
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
