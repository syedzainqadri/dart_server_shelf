import '/dart_server.dart';

class CategoryApi {
  Handler get router {
    final router = Router();
    //get all categories
    router.get('/', (Request request) async {
      try {
        var categories = await prisma.category.findMany();
        var categoriesObject = jsonEncode(categories);
        return Response.ok(categoriesObject, headers: {
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

    //get category by id
    router.get('/<id>', (Request request, String id) async {
      var uid = int.parse(id);
      try {
        var category = await prisma.category.findUnique(
          where: CategoryWhereUniqueInput(id: uid),
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

    //get subcategories by category id
    router.get('/subCategories/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var subCategory = await prisma.category.findMany(
          where: CategoryWhereInput(
              parentId: IntNullableFilter(equals: PrismaUnion.zero(uid))),
        );
        var subCategoryObject = jsonEncode(subCategory);
        return Response.ok(subCategoryObject, headers: {
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
    router.post('/createCategory', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var image = payload['image'];
        var name = payload['name'];
        var slug = payload['slug'];
        var description = payload['description'];
        var parentId = payload['parentId'];
        var published = payload['published'];
        var category = await prisma.category.create(
          data: CategoryCreateInput(
            image: PrismaUnion.zero(image),
            name: name,
            slug: PrismaUnion.zero(slug),
            description: PrismaUnion.zero(description),
            parentId: PrismaUnion.zero(parentId),
            published: published,
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

    //update category
    router.put('/updateCategory', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var name = payload['name'];
        var slug = payload['slug'];
        var description = payload['description'];
        var parentId = payload['parentId'];
        var published = payload['published'];
        var category = await prisma.category.update(
          where: CategoryWhereUniqueInput(id: id),
          data: CategoryUpdateInput(
            name: StringFieldUpdateOperationsInput(set$: name),
            slug: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(slug)),
            description: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(description)),
            parentId: NullableIntFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(parentId)),
            published: BoolFieldUpdateOperationsInput(set$: published),
            updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
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

    //delete category
    router.delete('/deleteCategory/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var category = await prisma.category.delete(
          where: CategoryWhereUniqueInput(id: uid),
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

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
