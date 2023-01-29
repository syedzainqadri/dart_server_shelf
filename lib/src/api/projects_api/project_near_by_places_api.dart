import '/dart_server.dart';

class ProjectNearByPlaceNearByPlacesApi {
  Handler get router {
    final router = Router();
    //get all projectNearByPlaceNearByPlaces
    router.get('/', (Request request) async {
      var projectNearByPlace = await prisma.projectNearByPlace.findMany();
      var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
      return Response.ok('All Near By Places Are: $projectNearByPlaceObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //get projectNearByPlace by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var projectNearByPlace = await prisma.projectNearByPlace.findUnique(
        where: ProjectNearByPlaceWhereUniqueInput(id: id),
      );
      var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
      return Response.ok('Near By Place By Id: $projectNearByPlaceObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //create projectNearByPlace
    router.post('/createProjectNearByPlace', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var longitude = payload['longitude'];
      var latitude = payload['latitude'];
      var projectId = payload['projectId'];
      var placeCategory = payload['placeCategory'];
      ProjectNearByPlaceCategory placeCategoryEnum =
          ProjectNearByPlaceCategory.values.firstWhere((e) =>
              e.toString() == 'ProjectNearByPlaceCategory.' + placeCategory);
      var projectNearByPlace = await prisma.projectNearByPlace.create(
        data: ProjectNearByPlaceCreateInput(
          title: title,
          longitude: longitude,
          latitude: latitude,
          placeCategory: placeCategoryEnum,
          projects: ProjectCreateNestedManyWithoutProjectNearByPlaceInput(
            connect: ProjectWhereUniqueInput(id: projectId),
            //TODO: Should not be required, relation needs to be understand
          ),
        ),
      );
      var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
      return Response.ok('NearBy Place Created: $projectNearByPlaceObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //update projectNearByPlace
    router.put('/updateProjectNearByPlace', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var title = payload['title'];
      var longitude = payload['longitude'];
      var latitude = payload['latitude'];
      var placeCategory = payload['placeCategory'];
      ProjectNearByPlaceCategory placeCategoryEnum =
          ProjectNearByPlaceCategory.values.firstWhere((e) =>
              e.toString() ==
              'ProjectNearByPlaceCategory.' +
                  placeCategory); //convert int to enum
      var projectNearByPlace = await prisma.projectNearByPlace.update(
        where: ProjectNearByPlaceWhereUniqueInput(id: id),
        data: ProjectNearByPlaceUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: title),
          longitude: StringFieldUpdateOperationsInput(set$: longitude),
          latitude: StringFieldUpdateOperationsInput(set$: latitude),
          placeCategory:
              EnumProjectNearByPlaceCategoryFieldUpdateOperationsInput(
                  set$: placeCategoryEnum),
          //TODO:updated At, Created At must be added
        ),
      );
      var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
      return Response.ok('Near By Place Updated: $projectNearByPlaceObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //delete projectNearByPlace
    router.delete('/deleteProjectNearByPlace', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var projectNearByPlace = await prisma.projectNearByPlace.delete(
        where: ProjectNearByPlaceWhereUniqueInput(id: id),
      );
      var projectNearByPlaceObject = jsonEncode(projectNearByPlace);
      return Response.ok('Near By Place Deleted: $projectNearByPlaceObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
