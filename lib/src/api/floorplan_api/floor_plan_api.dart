import '/dart_server.dart';

class FloorPlanApi {
  Handler get router {
    final router = Router();
    //get all floorplan
    router.get('/', (Request request) async {
      try {
        var floorPlan = await prisma.floorPlan.findMany();
        var floorPlanObject = jsonEncode(floorPlan);
        return Response.ok(floorPlanObject, headers: {
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

    //get floorPlan by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var floorPlan = await prisma.floorPlan.findUnique(
          where: FloorPlanWhereUniqueInput(id: uid),
        );
        var floorPlanObject = jsonEncode(floorPlan);
        return Response.ok(floorPlanObject, headers: {
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

    //create floorPlan
    router.post('/createFloorPlan', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var floorPlanPath = payload['floorPlanPath'];
        var projectId = payload['projectId'];
        var floorPlan = await prisma.floorPlan.create(
          data: FloorPlanCreateInput(
            title: title,
            floorPlanPath: floorPlanPath,
            project: ProjectCreateNestedOneWithoutFloorplansInput(
                connect: ProjectWhereUniqueInput(id: projectId)),
          ),
        );
        var floorPlanObject = jsonEncode(floorPlan);
        return Response.ok(floorPlanObject, headers: {
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

    //update floorPlan
    router.put('/updateFloorPlan', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var title = payload['title'];
        var floorPlanPath = payload['floorPlanPath'];
        var floorPlan = await prisma.floorPlan.update(
          where: FloorPlanWhereUniqueInput(id: id),
          data: FloorPlanUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            floorPlanPath:
                StringFieldUpdateOperationsInput(set$: floorPlanPath),
          ),
        );
        var floorPlanObject = jsonEncode(floorPlan);
        return Response.ok(floorPlanObject, headers: {
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

    //delete floorPlan
    router.delete('/deleteFloorPlan/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var floorPlan = await prisma.floorPlan.delete(
          where: FloorPlanWhereUniqueInput(id: uid),
        );
        var floorPlanObject = jsonEncode(floorPlan);
        return Response.ok(floorPlanObject, headers: {
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
