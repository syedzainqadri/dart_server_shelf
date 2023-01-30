import '/dart_server.dart';

class ForumPostApi {
  Handler get router {
    final router = Router();
    //get all forumPost
    router.get('/', (Request request) async {
      var forumPost = await prisma.forumPost.findMany();
      var forumPostObject = jsonEncode(forumPost);
      return Response.ok('All Forum Post Are: $forumPostObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get forumPost by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var forumPost = await prisma.forumPost.findUnique(
        where: ForumPostWhereUniqueInput(id: id),
      );
      var categoryObject = jsonEncode(forumPost);
      return Response.ok('Forum Post By Id Is: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create forumPost
    router.post('/createForumPost', (Request request) async {
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
              referenceId: refrenceId,
              type: SlugType.BLOG,
            ),
          ),
        ),
      );
      var categoryObject = jsonEncode(forumPost);
      return Response.ok('Forum Post Created: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update forumPost
    router.put('/updateForumPost', (Request request) async {
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
      return Response.ok('Forum Post Updated: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete forumPost
    router.delete('/deleteForumPost', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var forumPost = await prisma.forumPost.delete(
        where: ForumPostWhereUniqueInput(id: id),
      );
      var categoryObject = jsonEncode(forumPost);
      return Response.ok('Forum Post Deleted: $categoryObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
