import '/dart_server.dart';

class PaymentMethodApi {
  Handler get router {
    final router = Router();
    //get all paymentMethods
    router.get('/', (Request request) async {
      var paymentMethod = await prisma.paymentMethod.findMany();
      var paymentMethodObject = jsonEncode(paymentMethod);
      return Response.ok('Post Is: $paymentMethodObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get paymentMethod by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var paymentMethod = await prisma.paymentMethod.findUnique(
        where: PaymentMethodWhereUniqueInput(id: id),
      );
      var paymentMethodObject = jsonEncode(paymentMethod);
      return Response.ok('Post by ID Is: $paymentMethodObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create paymentMethod
    router.post('/createPaymentMethod', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var name = payload['name'];
      var apiKey = payload['apiKey'];
      var secret = payload['secret'];
      var status = payload['status'];
      CommonStatus statusEnum = CommonStatus.values
          .firstWhere((e) => e.toString() == 'CommonStatus.' + status);
      var paymentMethod = await prisma.paymentMethod.create(
        data: PaymentMethodCreateInput(
          name: name,
          apiKey: apiKey,
          secret: secret,
          status: statusEnum,
        ),
      );
      var paymentMethodObject = jsonEncode(paymentMethod);
      return Response.ok('Post by ID Is: $paymentMethodObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update paymentMethod
    router.put('/updatePaymentMethod', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var name = payload['name'];
      var apiKey = payload['apiKey'];
      var secret = payload['secret'];
      var status = payload['status'];
      CommonStatus statusEnum = CommonStatus.values
          .firstWhere((e) => e.toString() == 'SlugType.' + status);
      var paymentMethod = await prisma.paymentMethod.update(
        where: PaymentMethodWhereUniqueInput(id: id),
        data: PaymentMethodUpdateInput(
          name: StringFieldUpdateOperationsInput(set$: name),
          apiKey: StringFieldUpdateOperationsInput(set$: apiKey),
          secret: StringFieldUpdateOperationsInput(set$: secret),
          status: EnumCommonStatusFieldUpdateOperationsInput(set$: statusEnum),
          updatedAt: DateTimeFieldUpdateOperationsInput(
            set$: DateTime.now(),
          ),
        ),
      );
      var paymentMethodObject = jsonEncode(paymentMethod);
      return Response.ok('Post by ID Is: $paymentMethodObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete paymentMethod
    router.delete('/deletePaymentMethod', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var paymentMethod = await prisma.paymentMethod.delete(
        where: PaymentMethodWhereUniqueInput(id: id),
      );
      var paymentMethodObject = jsonEncode(paymentMethod);
      return Response.ok('Post by ID Is: $paymentMethodObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
