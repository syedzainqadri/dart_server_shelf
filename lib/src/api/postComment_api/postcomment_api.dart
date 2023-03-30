// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class PostCommentApi {
  Handler get router {
    final router = Router();
    //get all postComment
    router.get('/', (Request request) async {
      try {
        var postComment = await prisma.postComment.findMany();
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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

    //get postComment by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postComment = await prisma.postComment.findUnique(
          where: PostCommentWhereUniqueInput(id: uid),
        );
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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

    //get postComment by user id
    router.get('/user/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postComment = await prisma.postComment.findMany(
            where: PostCommentWhereInput(userId: IntFilter(equals: uid)));
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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

    //get postComment by post id
    router.get('/post/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postComment = await prisma.postComment.findMany(
            where: PostCommentWhereInput(postId: IntFilter(equals: uid)));
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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

    //create postComment
    router.post('/createPostComment', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var postReplyTitle = payload['postReplyTitle'];
        var postReplyDescription = payload['postReplyDescription'];
        var postId = payload['postId'];
        var userId = payload['userId'];
        var postComment = await prisma.postComment.create(
          data: PostCommentCreateInput(
            postReplyTitle: postReplyTitle,
            postReplyDescription: postReplyDescription,
            post: PostCreateNestedOneWithoutPostCommentInput(
              connect: PostWhereUniqueInput(id: postId),
            ),
            user: UsersCreateNestedOneWithoutPostCommentsInput(
              connect: UsersWhereUniqueInput(id: userId),
            ),
          ),
        );
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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

    //update postComment
    router.put('/updatePostComment', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        int? id = payload['postId'];
        var postReplyTitle = payload['postReplyTitle'];
        var postReplyDescription = payload['postReplyDescription'];
        var postComment = await prisma.postComment.update(
          where: PostCommentWhereUniqueInput(id: id),
          data: PostCommentUpdateInput(
            postReplyTitle:
                StringFieldUpdateOperationsInput(set$: postReplyTitle),
            postReplyDescription:
                StringFieldUpdateOperationsInput(set$: postReplyDescription),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
          ),
        );
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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

    //delete postComment
    router.delete('/deletePostComment/<id>',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var postComment = await prisma.postComment.delete(
          where: PostCommentWhereUniqueInput(id: uid),
        );
        var postCommentObject = jsonEncode(postComment);
        return Response.ok(postCommentObject, headers: {
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
