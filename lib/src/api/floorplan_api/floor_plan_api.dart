import '/dart_server.dart';

class FloorPlanApi {
  Handler get router {
    final router = Router();
    //get all floorplan
    router.get('/', (Request request) async {
      var floorPlan = await prisma.floorPlan.findMany();
      var floorPlanObject = jsonEncode(floorPlan);
      return Response.ok('All Floor Plan Are: $floorPlanObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get floorPlan by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var floorPlan = await prisma.floorPlan.findUnique(
        where: FloorPlanWhereUniqueInput(id: id),
      );
      var floorPlanObject = jsonEncode(floorPlan);
      return Response.ok('Floor Plan By Id is: $floorPlanObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create floorPlan
    router.post('/createFloorPlan', (Request request) async {
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
      return Response.ok('Floor Plan Created it: $floorPlanObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update floorPlan
    router.put('/updateFloorPlan', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var title = payload['title'];
      var floorPlanPath = payload['floorPlanPath'];
      var floorPlan = await prisma.floorPlan.update(
        where: FloorPlanWhereUniqueInput(id: id),
        data: FloorPlanUpdateInput(
          title: title,
          floorPlanPath: floorPlanPath,
        ),
      );
      var floorPlanObject = jsonEncode(floorPlan);
      return Response.ok('Floor Plan Updated: $floorPlanObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete floorPlan
    router.delete('/deleteFloorPlan', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var floorPlan = await prisma.floorPlan.delete(
        where: FloorPlanWhereUniqueInput(id: id),
      );
      var floorPlanObject = jsonEncode(floorPlan);
      return Response.ok('Floor Plan Deleted: $floorPlanObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
