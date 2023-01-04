import '../dart_server.dart';

class BlogCategoryApi {
  Handler get router {
    final router = Router();
    //get all blog categories
    router.get('/', (Request request) async {
      var blogCategory = await prisma.blogCategory.findMany();
      var blogCategoriesObject = jsonEncode(blogCategory);
      return Response.ok('Post Is: $blogCategoriesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get blog category by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var blogCategory = await prisma.blogCategory.findUnique(
        where: BlogCategoryWhereUniqueInput(id: id),
      );
      var blogCategoryObject = jsonEncode(blogCategory);
      return Response.ok('Post by ID Is: $blogCategoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create category
    router.post('/createBlogCategory', (Request request) async {
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
          //TODO: this should not be required
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          //uptill here todo
        ),
      );
      var blogCategoryObject = jsonEncode(blogCategory);
      return Response.ok('Post by ID Is: $blogCategoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update blog category
    router.put('/updateBlogCategory', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var title = payload['title'];
      var content = payload['content'];
      var iconImage = payload['iconImage'];
      var image = payload['image'];
      var category = await prisma.blogCategory.update(
        where: BlogCategoryWhereUniqueInput(id: id),
        data: BlogCategoryUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: title),
          content: NullableStringFieldUpdateOperationsInput(set$: content),
          iconImage: NullableStringFieldUpdateOperationsInput(set$: iconImage),
          image: NullableStringFieldUpdateOperationsInput(set$: image),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var categoryObject = jsonEncode(category);
      return Response.ok('Post by ID Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete blog category
    router.delete('/deleteBlogCategory', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var category = await prisma.blogCategory.delete(
        where: BlogCategoryWhereUniqueInput(id: id),
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
