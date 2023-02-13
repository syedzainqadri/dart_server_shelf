import '/dart_server.dart';

class FaqQuestionAnswerApi {
  Handler get router {
    final router = Router();
    //get all FaqQuestionAnswer
    router.get('/', (Request request) async {
      var categories = await prisma.faqQuestionAnswer.findMany();
      var categoriesObject = jsonEncode(categories);
      return Response.ok('All Faq Are: $categoriesObject\n', headers: {
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
      return Response.ok('FAQ by id is: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create faqQuestionAnswer
    router.post('/createFaqQuestionAnswer', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var question = payload['question'];
      var answer = payload['answer'];
      var sortOrder = payload['sortOrder'];
      var status = payload['status'];
      var faqGroupId = payload['faqGroupId'];
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.create(
        data: FaqQuestionAnswerCreateInput(
          qusestion: question,
          answer: answer,
          sortOrder: sortOrder,
          status: status,
          faqGroup: FaqGroupCreateNestedOneWithoutFaqQuestionAnswerInput(
              connect: FaqGroupWhereUniqueInput(id: faqGroupId)),
        ),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('FAQ Created: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update faqQuestionAnswer
    router.put('/updateFaqQuestionAnswer', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var question = payload['qusestion'];
      var answer = payload['answer'];
      var sortOrder = payload['sortOrder'];
      var status = payload['status'];
      var faqGroupId = payload['faqGroupId'];
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.update(
        where: FaqQuestionAnswerWhereUniqueInput(id: id),
        data: FaqQuestionAnswerUpdateInput(
          qusestion: question,
          answer: StringFieldUpdateOperationsInput(set$: answer),
          sortOrder: IntFieldUpdateOperationsInput(set$: sortOrder),
          status: BoolFieldUpdateOperationsInput(set$: status),
          faqGroup:
              FaqGroupUpdateOneRequiredWithoutFaqQuestionAnswerNestedInput(
                  connect: FaqGroupWhereUniqueInput(id: faqGroupId)),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('Faq Updated: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete faqQuestionAnswer
    router.delete('/deleteFaqQuestionAnswer', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var faqQuestionAnswer = await prisma.faqQuestionAnswer.delete(
        where: FaqQuestionAnswerWhereUniqueInput(id: id),
      );
      var faqObject = jsonEncode(faqQuestionAnswer);
      return Response.ok('FAQ Deleted: $faqObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
