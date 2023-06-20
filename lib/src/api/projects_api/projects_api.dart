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

    //create project
    router.post('/createProject', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        print(payload);
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
        var status = payload['status'];
        var area = payload['area'];
        var walkthroughThreeD = payload['walkthroughThreeD'];
        var project = await prisma.project.create(
          data: ProjectCreateInput(
            title: title,
            address: address,
            featuredImage: PrismaUnion.zero(featuredImage),
            gallery: PrismaUnion.zero(gallery),
            locality: PrismaUnion.zero(locality),
            area: PrismaUnion.zero(area),
            city: PrismaUnion.zero(city),
            startingPrice: PrismaUnion.zero(startingPrice),
            endingPrice: PrismaUnion.zero(endingPrice),
            category: CategoryCreateNestedOneWithoutProjectsInput(
              connect: CategoryWhereUniqueInput(id: categoryId),
            ),
            developer: DeveloperCreateNestedOneWithoutProjectsInput(
              connect: DeveloperWhereUniqueInput(id: developerId),
            ),
            status: PrismaUnion.zero(status),
            walkthroughThreeD: PrismaUnion.zero(walkthroughThreeD),
          ),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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
        var area = payload['area'];
        var status = payload['status'];
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
            area: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(area)),
            city: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(city)),
            startingPrice: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(startingPrice)),
            endingPrice: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(endingPrice)),
            walkthroughThreeD: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(walkthroughThreeD)),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
            category: CategoryUpdateOneWithoutProjectsNestedInput(
              connect: CategoryWhereUniqueInput(id: categoryId),
            ),
            status: NullableBoolFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(status),
            ),
          ),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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

    //delete project
    router.delete('/deleteProject/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var project = await prisma.project.delete(
          where: ProjectWhereUniqueInput(id: uid),
        );
        var projectObject = jsonEncode(project);
        return Response.ok(projectObject, headers: {
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
