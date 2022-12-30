import '../dart_server.dart';

class CategoryApi {
  Handler get router {
    final router = Router();
    //get all categories
    router.get('/', (Request request) async {
      var categories = await prisma.category.findMany();
      var categoriesObject = jsonEncode(categories);
      return Response.ok('Post Is: $categoriesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get category by id
    router.get('/<id|[0-9]+>', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var category = await prisma.category.findUnique(
        where: CategoryWhereUniqueInput(id: int.parse(id)),
      );
      var categoryObject = jsonEncode(category);
      return Response.ok('Post by ID Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get subcategories by category id
    router.get('/<id|[0-9]+>/subCategories',
        (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var subCategory = await prisma.category.findMany(
        where: CategoryWhereInput(parentId: id),
      );
      var subCategoryObject = jsonEncode(subCategory);
      return Response.ok('Post by ID Is: $subCategoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create category
    router.post('/createCategory', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var name = payload['name'];
      var slug = payload['slug'];
      var description = payload['description'];
      var parentId = payload['parentId'];
      var published = payload['published'];
      var category = await prisma.category.create(
        data: CategoryCreateInput(
          name: name,
          slug: PrismaUnion.zero(slug),
          description: PrismaUnion.zero(description),
          parentId: PrismaUnion.zero(parentId),
          published: published,
        ),
      );
      var categoryObject = jsonEncode(category);
      return Response.ok('Post by ID Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update category
    router.put('/updateCategory', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var name = payload['name'];
      var slug = payload['slug'];
      var description = payload['description'];
      var parentId = payload['parentId'];
      var published = payload['published'];
      var category = await prisma.category.update(
        where: CategoryWhereUniqueInput(id: int.parse(id)),
        data: CategoryUpdateInput(
          name: name,
          slug: NullableStringFieldUpdateOperationsInput(set$: slug),
          description:
              NullableStringFieldUpdateOperationsInput(set$: description),
          parentId: NullableIntFieldUpdateOperationsInput(set$: parentId),
          published: BoolFieldUpdateOperationsInput(set$: published),
        ),
      );
      var categoryObject = jsonEncode(category);
      return Response.ok('Post by ID Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete category
    router.delete('/deleteCategory', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var category = await prisma.category.delete(
        where: CategoryWhereUniqueInput(id: int.parse(id)),
      );
      var categoryObject = jsonEncode(category);
      return Response.ok('Post by ID Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
