import '/dart_server.dart';

class BlogApi {
  Handler get router {
    final router = Router();
    //get all blogs
    router.get('/', (Request request) async {
      try {
        var blog = await prisma.blog.findMany();
        var blogObject = jsonEncode(blog);
        return Response.ok(blogObject, headers: {
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

    //get blog by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var blog = await prisma.blog.findUnique(
          where: BlogWhereUniqueInput(id: uid),
        );
        var blogObject = jsonEncode(blog);
        return Response.ok(blogObject, headers: {
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

    //create blog
    router.post('/createBlog', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var content = payload['content'];
        var featuredImage = payload['featuredImage'];
        var status = payload['status'];
        var blogCategory = payload['blogCategory'];
        var slug = payload['slug'];
        var authorId = payload['authorId'];
        var refrenceId = payload['refrenceId'];
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
                referenceId: refrenceId,
              ),
            ),
            author: UsersCreateNestedOneWithoutBlogsInput(
              connect: UsersWhereUniqueInput(id: authorId),
            ),
          ),
        );
        var blogObject = jsonEncode(blog);
        return Response.ok(blogObject, headers: {
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

    //update blog
    router.put('/updateBlog', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var title = payload['title'];
        var content = payload['content'];
        var featuredImage = payload['featuredImage'];
        var status = payload['status'];
        var slug = payload['slug'];
        var blogCategory = payload['blogCategory'];
        var category = await prisma.blog.update(
          where: BlogWhereUniqueInput(id: id),
          data: BlogUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            content: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(content)),
            featuredImage: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(featuredImage)),
            status: BoolFieldUpdateOperationsInput(set$: status),
            slug: SlugUpdateOneRequiredWithoutBlogsNestedInput(
              update: SlugUpdateWithoutBlogsInput(
                slug: StringFieldUpdateOperationsInput(set$: slug),
              ),
            ),
            blogCategory: BlogCategoryUpdateOneRequiredWithoutBlogsNestedInput(
              connect: BlogCategoryWhereUniqueInput(id: blogCategory),
            ),
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

    //delete blog
    router.delete('/deleteBlog', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var blog = await prisma.blog.delete(
          where: BlogWhereUniqueInput(id: id),
        );
        var blogObject = jsonEncode(blog);
        return Response.ok(blogObject, headers: {
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
