import '/dart_server.dart';

class BlogCategoryApi {
  Handler get router {
    final router = Router();
    //get all blog categories
    router.get('/', (Request request) async {
      try {
        var blogCategory = await prisma.blogCategory.findMany();
        var blogCategoriesObject = jsonEncode(blogCategory);
        return Response.ok(blogCategoriesObject, headers: {
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

    //get blog category by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var blogCategory = await prisma.blogCategory.findUnique(
          where: BlogCategoryWhereUniqueInput(id: uid),
        );
        var blogCategoryObject = jsonEncode(blogCategory);
        return Response.ok(blogCategoryObject, headers: {
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

    //create category
    router.post('/createBlogCategory', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var content = payload['content'];
        var iconImage = payload['iconImage'];
        var image = payload['image'];
        var blogCategory = await prisma.blogCategory.create(
          data: BlogCategoryCreateInput(
            title: title,
            content: PrismaUnion.zero(content),
            iconImage: PrismaUnion.zero(iconImage),
            image: PrismaUnion.zero(image),
          ),
        );
        var blogCategoryObject = jsonEncode(blogCategory);
        return Response.ok(blogCategoryObject, headers: {
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

    //update blog category
    router.put('/updateBlogCategory', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var title = payload['title'];
        var content = payload['content'];
        var iconImage = payload['iconImage'];
        var image = payload['image'];
        var category = await prisma.blogCategory.update(
          where: BlogCategoryWhereUniqueInput(id: id),
          data: BlogCategoryUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            content: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(content)),
            iconImage: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(iconImage)),
            image: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(image)),
            updatedAt: NullableDateTimeFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(
                DateTime.now(),
              ),
            ),
          ),
        );
        var categoryObject = jsonEncode(category);
        return Response.ok(categoryObject, headers: {
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

    //delete blog category
    router.delete('/deleteBlogCategory/<id>',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var blogCategory = await prisma.blogCategory.delete(
          where: BlogCategoryWhereUniqueInput(id: uid),
        );
        var blogCategoryObject = jsonEncode(blogCategory);
        return Response.ok(blogCategoryObject, headers: {
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
