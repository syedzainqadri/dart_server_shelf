// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class ProjectNearByPlaceNearByPlacesApi {
  Handler get router {
    final router = Router();
    //get all projectNearByPlaceNearByPlaces
    router.get('/', (Request request) async {
      try {
        var projectNearByPlace = await prisma.projectNearByPlace.findMany();
        var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
        return Response.ok(projectNearByPlaceObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //get projectNearByPlace by id
    router.get('/id', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var projectNearByPlace = await prisma.projectNearByPlace.findUnique(
          where: ProjectNearByPlaceWhereUniqueInput(id: id),
        );
        var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
        return Response.ok(projectNearByPlaceObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //create projectNearByPlace
    router.post('/createProjectNearByPlace', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var icon = payload['icon'];
        var status = payload['status'];
        var projectNearByPlace = await prisma.projectNearByPlace.create(
          data: ProjectNearByPlaceCreateInput(
            name: title,
            icon: PrismaUnion.zero(icon),
            status: status,
          ),
        );
        var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
        return Response.ok(projectNearByPlaceObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //update projectNearByPlace
    router.put('/updateProjectNearByPlace', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var title = payload['title'];
        var icon = payload['icon'];
        var status = payload['status']; //convert int to enum
        var projectNearByPlace = await prisma.projectNearByPlace.update(
          where: ProjectNearByPlaceWhereUniqueInput(id: id),
          data: ProjectNearByPlaceUpdateInput(
            name: StringFieldUpdateOperationsInput(set$: title),
            icon: NullableStringFieldUpdateOperationsInput(set$: icon),
            status: BoolFieldUpdateOperationsInput(set$: status),
          ),
        );
        var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
        return Response.ok(projectNearByPlaceObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //delete projectNearByPlace
    router.delete('/deleteProjectNearByPlace/<id>',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var projectNearByPlace = await prisma.projectNearByPlace.delete(
          where: ProjectNearByPlaceWhereUniqueInput(id: uid),
        );
        var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
        return Response.ok(projectNearByPlaceObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
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
