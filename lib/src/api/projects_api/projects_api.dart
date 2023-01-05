import '/dart_server.dart';

//TODO: needs restructuring

class ProjectsApi {
  Handler get router {
    final router = Router();
    //get all projects
    router.get('/', (Request request) async {
      var project = await prisma.project.findMany();
      var projectObject = jsonEncode(project);
      return Response.ok('Post Is: $projectObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get project by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var project = await prisma.project.findUnique(
        where: ProjectWhereUniqueInput(id: id),
      );
      var projectObject = jsonEncode(project);
      return Response.ok('Post by ID Is: $projectObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create project
    router.post('/createProject', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var address = payload['address'];
      var featuredImage = payload['featuredImage'];
      var gallery = payload['gallery'];
      var locality = payload['locality'];
      var city = payload['city'];
      var price = payload['price'];
      var categoryId = payload['categoryId'];
      var developerId = payload['developerId'];
      var projectNearByPlaceId = payload['projectNearByPlaceId'];

      var project = await prisma.project.create(
        data: ProjectCreateInput(
          title: title,
          address: address,
          featuredImage: PrismaUnion.zero(featuredImage),
          gallery: PrismaUnion.zero(gallery),
          locality: PrismaUnion.zero(locality),
          city: PrismaUnion.zero(city),
          price: PrismaUnion.zero(price),
          category: CategoryCreateNestedOneWithoutProjectsInput(
            connect: CategoryWhereUniqueInput(id: categoryId),
          ),
          developer: DeveloperCreateNestedOneWithoutProjectsInput(
            connect: DeveloperWhereUniqueInput(id: developerId),
          ),
          projectNearByPlace:
              ProjectNearByPlaceCreateNestedOneWithoutProjectsInput(
            connect:
                ProjectNearByPlaceWhereUniqueInput(id: projectNearByPlaceId),
          ),
        ),
      );
      var projectObject = jsonEncode(project);
      return Response.ok('Post by ID Is: $projectObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update project
    router.put('/updateProject', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var title = payload['title'];
      var projectPath = payload['projectPath'];
      var project = await prisma.project.update(
        where: ProjectWhereUniqueInput(id: id),
        data: ProjectUpdateInput(),
      );
      var projectObject = jsonEncode(project);
      return Response.ok('Post by ID Is: $projectObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete project
    router.delete('/deleteProject', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var project = await prisma.project.delete(
        where: ProjectWhereUniqueInput(id: id),
      );
      var projectObject = jsonEncode(project);
      return Response.ok('Post by ID Is: $projectObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
