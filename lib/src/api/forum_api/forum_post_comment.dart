import '/dart_server.dart';

class ForumPostCommentApi {
  Handler get router {
    final router = Router();
    //get all forumPostComment
    router.get('/', (Request request) async {
      try {
        var forumPostComment = await prisma.forumPostComment.findMany();
        var forumPostCommentObject = jsonEncode(forumPostComment);
        return Response.ok(forumPostCommentObject, headers: {
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

    //get forumPostComment by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var forumPostComment = await prisma.forumPostComment.findUnique(
          where: ForumPostCommentWhereUniqueInput(id: uid),
        );
        var forumPostCommentObject = jsonEncode(forumPostComment);
        return Response.ok(forumPostCommentObject, headers: {
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

    //create forumPostComment
    router.post('/createForumPostComment', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var postReplyTitle = payload['postReplyTitle'];
        var postReplyDescription = payload['postReplyDescription'];
        var userId = payload['userId'];
        var forumPostId = payload['forumPostId'];
        var forumPostComment = await prisma.forumPostComment.create(
          data: ForumPostCommentCreateInput(
            postReplyTitle: postReplyTitle,
            postReplyDescription: postReplyDescription,
            createdAt: DateTime.now(),
            user: UsersCreateNestedOneWithoutFormPostCommentsInput(
              connect: UsersWhereUniqueInput(id: userId),
            ),
            forumPost: ForumPostCreateNestedOneWithoutForumPostReplyInput(
              connect: ForumPostWhereUniqueInput(id: forumPostId),
            ),
          ),
        );
        var forumPostCommentObject = jsonEncode(forumPostComment);
        return Response.ok(forumPostCommentObject, headers: {
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

    //update forumPostComment
    router.put('/updateForumPostComment', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var postReplyTitle = payload['postReplyTitle'];
        var postReplyDescription = payload['postReplyDescription'];
        var forumPostComment = await prisma.forumPostComment.update(
          where: ForumPostCommentWhereUniqueInput(id: id),
          data: ForumPostCommentUpdateInput(
            postReplyTitle:
                StringFieldUpdateOperationsInput(set$: postReplyTitle),
            postReplyDescription:
                StringFieldUpdateOperationsInput(set$: postReplyDescription),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
          ),
        );
        var forumPostCommentObject = jsonEncode(forumPostComment);
        return Response.ok(forumPostCommentObject, headers: {
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

    //delete forumPostComment
    router.delete('/deleteForumPostComment', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var forumPostComment = await prisma.forumPostComment.delete(
          where: ForumPostCommentWhereUniqueInput(id: id),
        );
        var forumPostCommentObject = jsonEncode(forumPostComment);
        return Response.ok(forumPostCommentObject, headers: {
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
