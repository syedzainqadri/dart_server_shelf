import '/dart_server.dart';

class ReviewApi {
  Handler get router {
    final router = Router();
    //get all review
    router.get('/', (Request request) async {
      var review = await prisma.review.findMany();
      var reviewObject = jsonEncode(review);
      return Response.ok('Post Is: $reviewObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get review by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var review = await prisma.review.findUnique(
        where: ReviewWhereUniqueInput(id: id),
      );
      var reviewObject = jsonEncode(review);
      return Response.ok('Post by ID Is: $reviewObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create review
    router.post('/createReview', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var name = payload['name'];
      var message = payload['message'];
      var postId = payload['postID'].toInt();
      var review = await prisma.review.create(
        data: ReviewCreateInput(
          name: PrismaUnion.zero(name),
          message: PrismaUnion.zero(message),
          user: UsersCreateNestedOneWithoutReviewsInput(
            connect: UsersWhereUniqueInput(
              id: id,
            ),
          ),
          post: PostCreateNestedOneWithoutReviewInput(
            connect: PostWhereUniqueInput(
              id: postId,
            ),
          ),
        ),
      );
      var reviewObject = jsonEncode(review);
      return Response.ok('Post by ID Is: $reviewObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update review
    router.put('/updateReview', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var name = payload['name'];
      var message = payload['message'];
      var review = await prisma.review.update(
        where: ReviewWhereUniqueInput(id: id),
        data: ReviewUpdateInput(
          name: NullableStringFieldUpdateOperationsInput(set$: name),
          message: NullableStringFieldUpdateOperationsInput(set$: message),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var reviewObject = jsonEncode(review);
      return Response.ok('Post by ID Is: $reviewObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete review
    router.delete('/deleteReview', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var review = await prisma.review.delete(
        where: ReviewWhereUniqueInput(id: id),
      );
      var reviewObject = jsonEncode(review);
      return Response.ok('Post by ID Is: $reviewObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
