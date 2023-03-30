import '/dart_server.dart';

class FaqQuestionAnswerApi {
  Handler get router {
    final router = Router();
    //get all FaqQuestionAnswer
    router.get('/', (Request request) async {
      try {
        var categories = await prisma.faqQuestionAnswer.findMany();
        var categoriesObject = jsonEncode(categories);
        return Response.ok(categoriesObject, headers: {
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

    //get faqQuestionAnswer by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var faqQuestionAnswer = await prisma.faqQuestionAnswer.findUnique(
          where: FaqQuestionAnswerWhereUniqueInput(id: uid),
        );
        var faqObject = jsonEncode(faqQuestionAnswer);
        return Response.ok(faqObject, headers: {
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

    //create faqQuestionAnswer
    router.post('/createFaqQuestionAnswer', (Request request) async {
      try {
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
        return Response.ok(faqObject, headers: {
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

    //update faqQuestionAnswer
    router.put('/updateFaqQuestionAnswer', (Request request) async {
      try {
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
        return Response.ok(faqObject, headers: {
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

    //delete faqQuestionAnswer
    router.delete('/deleteFaqQuestionAnswer',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var faqQuestionAnswer = await prisma.faqQuestionAnswer.delete(
          where: FaqQuestionAnswerWhereUniqueInput(id: uid),
        );
        var faqObject = jsonEncode(faqQuestionAnswer);
        return Response.ok(faqObject, headers: {
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
