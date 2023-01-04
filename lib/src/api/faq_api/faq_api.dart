import '/dart_server.dart';

class FaqQuestionAnswerApi {
  Handler get router {
    //TODO: sort order is not required
    final router = Router();
    //get all FaqQuestionAnswer
    router.get('/', (Request request) async {
      var categories = await prisma.faqQuestionAnswer.findMany();
      var categoriesObject = jsonEncode(categories);
      return Response.ok('Post Is: $categoriesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get faqQuestionAnswer by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.findUnique(
        where: FaqQuestionAnswerWhereUniqueInput(id: id),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('Post by ID Is: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create faqQuestionAnswer
    router.post('/createFaqQuestionAnswer', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var qusestion = payload['qusestion'];
      var answer = payload['answer'];
      var sortOrder = payload['sortOrder'];
      var status = payload['status'];
      var faqGroupId = payload['faqGroupId'];
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.create(
        data: FaqQuestionAnswerCreateInput(
          qusestion: qusestion,
          answer: answer,
          sortOrder: sortOrder,
          status: status,
          faqGroup: FaqGroupCreateNestedOneWithoutFaqQuestionAnswerInput(
              connect: FaqGroupWhereUniqueInput(id: faqGroupId)),
        ),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('Post by ID Is: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update faqQuestionAnswer
    router.put('/updateFaqQuestionAnswer', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var question = payload['qusestion'];
      var answer = payload['answer'];
      var sortOrder = payload['sortOrder'];
      var status = payload['status'];
      var faqGroupId = payload['faqGroupId'];
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.update(
        where: FaqQuestionAnswerWhereUniqueInput(id: id),
        data: FaqQuestionAnswerUpdateInput(
          qusestion: question,
          answer: answer,
          sortOrder: sortOrder,
          status: status,
          faqGroup:
              FaqGroupUpdateOneRequiredWithoutFaqQuestionAnswerNestedInput(
                  connect: FaqGroupWhereUniqueInput(id: faqGroupId)),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('Post by ID Is: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete faqQuestionAnswer
    router.delete('/deleteFaqQuestionAnswer', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.delete(
        where: FaqQuestionAnswerWhereUniqueInput(id: id),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('Post by ID Is: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
