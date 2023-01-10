import '/dart_server.dart';

class BlogApi {
  Handler get router {
    final router = Router();
    //get all blogs
    router.get('/', (Request request) async {
      var blog = await prisma.blog.findMany();
      var blogObject = jsonEncode(blog);
      return Response.ok('Post Is: $blogObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get blog by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var blog = await prisma.blog.findUnique(
        where: BlogWhereUniqueInput(id: id),
      );
      var blogObject = jsonEncode(blog);
      return Response.ok('Post by ID Is: $blogObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create blog
    router.post('/createBlog', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var content = payload['content'];
      var featuredImage = payload['featuredImage'];
      var status = payload['status'];
      var blogCategory = payload['blogCategory'];
      var slug = payload['slug'];
      var authorId = payload['authorId'];
      var blog = await prisma.blog.create(
        data: BlogCreateInput(
          title: title,
          content: PrismaUnion.zero(content),
          featuredImage: PrismaUnion.zero(featuredImage),
          status: status,
          blogCategory: BlogCategoryCreateNestedOneWithoutBlogsInput(
            connect: BlogCategoryWhereUniqueInput(id: blogCategory),
          ),
          slug: SlugCreateNestedOneWithoutBlogsInput(
            create: SlugCreateWithoutBlogsInput(
              slug: slug,
              type: SlugType.BLOG,
              referenceId: 1,
            ),
          ),
          author: UsersCreateNestedOneWithoutBlogsInput(
            connect: UsersWhereUniqueInput(id: authorId),
          ),
          //uptill here todo
        ),
      );
      var blogObject = jsonEncode(blog);
      return Response.ok('Post by ID Is: $blogObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update blog
    router.put('/updateBlog', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var title = payload['title'];
      var content = payload['content'];
      var featuredImage = payload['iconImage'];
      var status = payload['status'];
      var slug = payload['slug'];
      var blogCategoryId = payload['blogCategoryId'];
      var category = await prisma.blog.update(
        where: BlogWhereUniqueInput(id: id),
        data: BlogUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: title),
          content: NullableStringFieldUpdateOperationsInput(set$: content),
          featuredImage:
              NullableStringFieldUpdateOperationsInput(set$: featuredImage),
          status: BoolFieldUpdateOperationsInput(set$: status),
          slug: SlugUpdateOneRequiredWithoutBlogsNestedInput(
            update: SlugUpdateWithoutBlogsInput(
              slug: StringFieldUpdateOperationsInput(set$: slug),
            ),
          ),
          blogCategory: BlogCategoryUpdateOneRequiredWithoutBlogsNestedInput(
            connect: BlogCategoryWhereUniqueInput(id: blogCategoryId),
          ),
          updatedAt: NullableDateTimeFieldUpdateOperationsInput(
            set$: PrismaUnion.zero(
              DateTime.now(),
            ),
          ),
        ),
      );
      var categoryObject = jsonEncode(category);
      return Response.ok('Post by ID Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete blog
    router.delete('/deleteBlog', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var blog = await prisma.blog.delete(
        where: BlogWhereUniqueInput(id: id),
      );
      var blogObject = jsonEncode(blog);
      return Response.ok('Post by ID Is: $blogObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
