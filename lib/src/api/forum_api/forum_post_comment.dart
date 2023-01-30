import '/dart_server.dart';

class ForumPostCommentApi {
  Handler get router {
    final router = Router();
    //get all forumPostComment
    router.get('/', (Request request) async {
      var forumPostComment = await prisma.forumPostComment.findMany();
      var forumPostCommentObject = jsonEncode(forumPostComment);
      return Response.ok('All Forum Comments Are: $forumPostCommentObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //get forumPostComment by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var forumPostComment = await prisma.forumPostComment.findUnique(
        where: ForumPostCommentWhereUniqueInput(id: id),
      );
      var forumPostCommentObject = jsonEncode(forumPostComment);
      return Response.ok('Forum Comment by Id: $forumPostCommentObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //create forumPostComment
    router.post('/createForumPostComment', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var postReplyTitle = payload['postReplyTitle'];
      var postReplyType = payload['postReplyType'];
      var postReplyDescription = payload['postReplyDescription'];
      var userId = payload['userId'];
      var forumPostId = payload['forumPostId'];
      var forumPostComment = await prisma.forumPostComment.create(
        data: ForumPostCommentCreateInput(
          postReplyTitle: postReplyTitle,
          postReplyDescription: postReplyDescription,
          postReplyType: postReplyType, //TODO: What is this?
          createdAt: DateTime.now(), //TODO: This should not be required
          user: UsersCreateNestedOneWithoutFormPostCommentsInput(
            connect: UsersWhereUniqueInput(id: userId),
          ),
          forumPost: ForumPostCreateNestedOneWithoutForumPostReplyInput(
            connect: ForumPostWhereUniqueInput(id: forumPostId),
          ),
        ),
      );
      var forumPostCommentObject = jsonEncode(forumPostComment);
      return Response.ok('Forum Comment Created: $forumPostCommentObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //update forumPostComment
    router.put('/updateForumPostComment', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var postReplyTitle = payload['postReplyTitle'];
      var postReplyType = payload['postReplyType']; //TODO: Define proper enums
      var postReplyDescription = payload['postReplyDescription'];
      var forumPostComment = await prisma.forumPostComment.update(
        where: ForumPostCommentWhereUniqueInput(id: id),
        data: ForumPostCommentUpdateInput(
          postReplyTitle:
              StringFieldUpdateOperationsInput(set$: postReplyTitle),
          postReplyDescription:
              StringFieldUpdateOperationsInput(set$: postReplyDescription),
          postReplyType: StringFieldUpdateOperationsInput(set$: postReplyType),
          updatedAt: DateTimeFieldUpdateOperationsInput(
            set$: DateTime.now(),
          ),
        ),
      );
      var forumPostCommentObject = jsonEncode(forumPostComment);
      return Response.ok('Forum Comment Updated: $forumPostCommentObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //delete forumPostComment
    router.delete('/deleteForumPostComment', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var forumPostComment = await prisma.forumPostComment.delete(
        where: ForumPostCommentWhereUniqueInput(id: id),
      );
      var forumPostCommentObject = jsonEncode(forumPostComment);
      return Response.ok('Forum Comment Deleted: $forumPostCommentObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
