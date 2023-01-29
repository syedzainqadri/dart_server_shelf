import '/dart_server.dart';

class BlogCategoryApi {
  Handler get router {
    final router = Router();
    //get all blog categories
    router.get('/', (Request request) async {
      var blogCategory = await prisma.blogCategory.findMany();
      var blogCategoriesObject = jsonEncode(blogCategory);
      return Response.ok('Blog Categories Are: $blogCategoriesObject\n',
          headers: {
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
      return Response.ok('Blog you asked for is: $blogCategoryObject\n',
          headers: {
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
          //uptill here todo
        ),
      );
      var blogCategoryObject = jsonEncode(blogCategory);
      return Response.ok('Blog Category Created is: $blogCategoryObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //update blog category
    router.put('/updateBlogCategory', (Request request) async {
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
      return Response.ok('Blog Category updated Is: $categoryObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //delete blog category
    router.delete('/deleteBlogCategory', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var blogCategory = await prisma.blogCategory.delete(
        where: BlogCategoryWhereUniqueInput(id: id),
      );
      var blogCategoryObject = jsonEncode(blogCategory);
      return Response.ok('Blog Category Deleted Is: $blogCategoryObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
