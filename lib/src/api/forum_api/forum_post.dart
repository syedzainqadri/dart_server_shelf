// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class ForumPostApi {
  Handler get router {
    final router = Router();
    //get all forumPost
    router.get('/', (Request request) async {
      try {
        var forumPost = await prisma.forumPost.findMany();
        var forumPostObject = jsonEncode(forumPost);
        return Response.ok(forumPostObject, headers: {
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

    //get forumPost by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var forumPost = await prisma.forumPost.findUnique(
          where: ForumPostWhereUniqueInput(id: uid),
        );
        var categoryObject = jsonEncode(forumPost);
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

    //create forumPost
    router.post('/createForumPost', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var postTitle = payload['postTitle'];
        var postType = payload['postType'];
        ForumPostType postTypeEnum = ForumPostType.values
            .firstWhere((e) => e.toString() == 'ForumPostType.' + postType);
        var postDescription = payload['postDescription'];
        var slug = payload['slug'];
        var refrenceId = payload['refrenceId'];
        var userId = payload['userId'];
        var forumPost = await prisma.forumPost.create(
          data: ForumPostCreateInput(
            postTitle: postTitle,
            postType: postTypeEnum,
            postDescription: postDescription,
            createdAt: DateTime.now(),
            user: UsersCreateNestedOneWithoutFormPostsInput(
              connect: UsersWhereUniqueInput(id: userId),
            ),
            slug: SlugCreateNestedOneWithoutFormPostInput(
              create: SlugCreateWithoutFormPostInput(
                slug: slug,
                type: SlugType.BLOG,
              ),
            ),
          ),
        );
        var categoryObject = jsonEncode(forumPost);
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

    //update forumPost
    router.put('/updateForumPost', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var postTitle = payload['postTitle'];
        var postType = payload['postType'];
        ForumPostType postTypeEnum = ForumPostType.values
            .firstWhere((e) => e.toString() == 'ForumPostType.' + postType);
        var postDescription = payload['postDescription'];
        var forumPost = await prisma.forumPost.update(
          where: ForumPostWhereUniqueInput(id: id),
          data: ForumPostUpdateInput(
            postTitle: StringFieldUpdateOperationsInput(set$: postTitle),
            postType:
                EnumForumPostTypeFieldUpdateOperationsInput(set$: postTypeEnum),
            postDescription:
                StringFieldUpdateOperationsInput(set$: postDescription),
            updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
          ),
        );
        var categoryObject = jsonEncode(forumPost);
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

    //delete forumPost
    router.delete('/deleteForumPost/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var forumPost = await prisma.forumPost.delete(
          where: ForumPostWhereUniqueInput(id: uid),
        );
        var categoryObject = jsonEncode(forumPost);
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
