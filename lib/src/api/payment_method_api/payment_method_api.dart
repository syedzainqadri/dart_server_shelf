// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class PaymentMethodApi {
  Handler get router {
    final router = Router();
    //get all paymentMethods
    router.get('/', (Request request) async {
      try {
        var paymentMethod = await prisma.paymentMethod.findMany();
        var paymentMethodObject = jsonEncode(paymentMethod);
        return Response.ok(paymentMethodObject, headers: {
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

    //get paymentMethod by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var paymentMethod = await prisma.paymentMethod.findUnique(
          where: PaymentMethodWhereUniqueInput(id: uid),
        );
        var paymentMethodObject = jsonEncode(paymentMethod);
        return Response.ok(paymentMethodObject, headers: {
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

    //create paymentMethod
    router.post('/createPaymentMethod', (Request request) async {
      try {
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
        return Response.ok(paymentMethodObject, headers: {
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

    //update paymentMethod
    router.put('/updatePaymentMethod', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var name = payload['name'];
        var apiKey = payload['apiKey'];
        var secret = payload['secret'];
        var status = payload['status'];
        CommonStatus statusEnum = CommonStatus.values
            .firstWhere((e) => e.toString() == 'CommonStatus.' + status);
        var paymentMethod = await prisma.paymentMethod.update(
          where: PaymentMethodWhereUniqueInput(id: id),
          data: PaymentMethodUpdateInput(
            name: StringFieldUpdateOperationsInput(set$: name),
            apiKey: StringFieldUpdateOperationsInput(set$: apiKey),
            secret: StringFieldUpdateOperationsInput(set$: secret),
            status:
                EnumCommonStatusFieldUpdateOperationsInput(set$: statusEnum),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
          ),
        );
        var paymentMethodObject = jsonEncode(paymentMethod);
        return Response.ok(paymentMethodObject, headers: {
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

    //delete paymentMethod
    router.delete('/deletePaymentMethod/<id>',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var paymentMethod = await prisma.paymentMethod.delete(
          where: PaymentMethodWhereUniqueInput(id: uid),
        );
        var paymentMethodObject = jsonEncode(paymentMethod);
        return Response.ok(paymentMethodObject, headers: {
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
