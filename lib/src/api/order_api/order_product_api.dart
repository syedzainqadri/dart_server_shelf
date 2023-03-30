import '/dart_server.dart';

class OrderProductApi {
  Handler get router {
    final router = Router();
    //get all orderProduct
    router.get('/', (Request request) async {
      try {
        var orderProduct = await prisma.orderProduct.findMany();
        var orderObject = jsonEncode(orderProduct);
        return Response.ok(orderObject, headers: {
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

    //get orderProduct by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var orderProduct = await prisma.orderProduct.findUnique(
          where: OrderProductWhereUniqueInput(id: uid),
        );
        var orderObject = jsonEncode(orderProduct);
        return Response.ok(orderObject, headers: {
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

    //create orderProduct
    router.post('/createOrderProduct', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var price = payload['price'].toDouble();
        var isProductUsed = payload['isProductUsed'];
        var productId = payload['productId'];
        var orderId = payload['orderId'];
        var post = payload['post'];
        var productActiveDate = payload['productActiveDate'];
        var productExpireDate = payload['productExpireDate'];

        var orderProduct = await prisma.orderProduct.create(
          data: OrderProductCreateInput(
            price: price,
            isProductUsed: isProductUsed,
            product: ProductCreateNestedOneWithoutOrderProductInput(
                connect: ProductWhereUniqueInput(id: productId)),
            order: OrderCreateNestedOneWithoutOrderProductInput(
              connect: OrderWhereUniqueInput(id: orderId),
            ),
            post: PostCreateNestedOneWithoutOrderProductInput(
                connect: PostWhereUniqueInput(id: post)),
            productActiveDate: PrismaUnion.zero(productActiveDate),
            productExpireDate: PrismaUnion.zero(productExpireDate),
          ),
        );
        var orderObject = jsonEncode(orderProduct);
        return Response.ok(orderObject, headers: {
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

    //update orderProduct
    router.put('/updateOrderProduct', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var price = payload['price'].toDouble();
        var isProductUsed = payload['isProductUsed'];
        var productId = payload['productId'];
        var orderId = payload['orderId'];
        var productExpireDate = payload['productExpireDate'];

        var orderProduct = await prisma.orderProduct.update(
          where: OrderProductWhereUniqueInput(id: id),
          data: OrderProductUpdateInput(
            price: FloatFieldUpdateOperationsInput(set$: price),
            isProductUsed: BoolFieldUpdateOperationsInput(set$: isProductUsed),
            product: ProductUpdateOneRequiredWithoutOrderProductNestedInput(
                connect: ProductWhereUniqueInput(id: productId)),
            order: OrderUpdateOneRequiredWithoutOrderProductNestedInput(
              connect: OrderWhereUniqueInput(id: orderId),
            ),
            productExpireDate: NullableDateTimeFieldUpdateOperationsInput(
                set$: productExpireDate),
          ),
        );
        var orderObject = jsonEncode(orderProduct);
        return Response.ok(orderObject, headers: {
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

    //delete orderProduct
    router.delete('/deleteOrderProduct/<id>',
        (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var orderProduct = await prisma.orderProduct.delete(
          where: OrderProductWhereUniqueInput(id: uid),
        );
        var orderObject = jsonEncode(orderProduct);
        return Response.ok(orderObject, headers: {
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
