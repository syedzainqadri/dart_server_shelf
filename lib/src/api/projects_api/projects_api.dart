import '/dart_server.dart';

class ProjectsApi {
  Handler get router {
    final router = Router();
    //get all projects
    router.get('/', (Request request) async {
      try {
        var project = await prisma.project.findMany();
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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

    //get project by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var project = await prisma.project.findUnique(
          where: ProjectWhereUniqueInput(id: uid),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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

    //create project
    router.post('/createProject', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var address = payload['address'];
        var featuredImage = payload['featuredImage'];
        var gallery = payload['gallery'];
        var locality = payload['locality'];
        var city = payload['city'];
        var categoryId = payload['categoryId'];
        var developerId = payload['developerId'];
        var startingPrice = payload['startingPrice'];
        var endingPrice = payload['endingPrice'];

        var project = await prisma.project.create(
          data: ProjectCreateInput(
            title: title,
            address: address,
            featuredImage: PrismaUnion.zero(featuredImage),
            gallery: PrismaUnion.zero(gallery),
            locality: PrismaUnion.zero(locality),
            city: PrismaUnion.zero(city),
            startingPrice: PrismaUnion.zero(startingPrice),
            endingPrice: PrismaUnion.zero(endingPrice),
            category: CategoryCreateNestedOneWithoutProjectsInput(
              connect: CategoryWhereUniqueInput(id: categoryId),
            ),
            developer: DeveloperCreateNestedOneWithoutProjectsInput(
              connect: DeveloperWhereUniqueInput(id: developerId),
            ),
          ),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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

    //update project
    router.put('/updateProject', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var title = payload['title'];
        var address = payload['address'];
        var featuredImage = payload['featuredImage'];
        var gallery = payload['gallery'];
        var locality = payload['locality'];
        var city = payload['city'];
        var startingPrice = payload['startingPrice'];
        var endingPrice = payload['endingPrice'];
        var walkthroughThreeD = payload['walkthroughThreeD'];
        var categoryId = payload['categoryId'];
        var project = await prisma.project.update(
          where: ProjectWhereUniqueInput(id: id),
          data: ProjectUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            address: StringFieldUpdateOperationsInput(set$: address),
            featuredImage: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(featuredImage)),
            gallery: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(gallery)),
            locality: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(locality)),
            city: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(city)),
            startingPrice: NullableFloatFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(startingPrice)),
            endingPrice: NullableFloatFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(endingPrice)),
            walkthroughThreeD: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(walkthroughThreeD)),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
            category: CategoryUpdateOneWithoutProjectsNestedInput(
                connect: CategoryWhereUniqueInput(id: categoryId)),
          ),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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

    //delete project
    router.delete('/deleteProject', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var project = await prisma.project.delete(
          where: ProjectWhereUniqueInput(id: id),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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
