import '/dart_server.dart';

class OrderApi {
  Handler get router {
    final router = Router();
    //get all orders
    router.get('/', (Request request) async {
      try {
        var order = await prisma.order.findMany();
        var orderObject = jsonEncode(order);
        return Response.ok(orderObject, headers: {
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

    //get order by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var order = await prisma.order.findUnique(
          where: OrderWhereUniqueInput(id: uid),
        );
        var orderObject = jsonEncode(order);
        return Response.ok(orderObject, headers: {
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

    //create order
    router.post('/createOrder', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var orderAmount = payload['orderAmount'];
        var userId = payload['userId'];
        var paymentMethodId = payload['paymentMethodId'];
        var price = payload['price'];
        var productId = payload['productId'];
        var isProductUsed = payload['isProductUsed'];
        var productExpireDate = payload['productExpireDate'];
        var order = await prisma.order.create(
          data: OrderCreateInput(
            orderAmount: orderAmount,
            user: UsersCreateNestedOneWithoutOrderInput(
              connect: UsersWhereUniqueInput(id: userId),
            ),
            paymentMethodId: paymentMethodId,
            // paymentMethod: PaymentMethodCreateNestedOneWithoutOrderInput(
            //     connect: PaymentMethodWhereUniqueInput(id: paymentMethodId)),
            orderProduct: OrderProductCreateNestedManyWithoutOrderInput(
              create: OrderProductCreateWithoutOrderInput(
                price: price,
                product: ProductCreateNestedOneWithoutOrderProductInput(
                  connect: ProductWhereUniqueInput(id: productId),
                ),
                isProductUsed: isProductUsed,
                productActiveDate: PrismaUnion.zero(DateTime.now()),
                productExpireDate:
                    PrismaUnion.zero(DateTime.parse(productExpireDate)),
              ),
            ),
          ),
        );
        var orderObject = jsonEncode(order);
        return Response.ok(orderObject, headers: {
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

    //update order
    router.put('/updateOrder', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var orderAmount = payload['orderAmount'];
        var paymentMethodId = payload['paymentMethodId'];
        var orderProductId = payload['orderProductId'];
        var price = payload['price'];
        var productId = payload['productId'];
        var isProductUsed = payload['isProductUsed'];
        var productExpireDate = payload['productExpireDate'];
        var order = await prisma.order.update(
          where: OrderWhereUniqueInput(id: id),
          data: OrderUpdateInput(
            orderAmount: FloatFieldUpdateOperationsInput(set$: orderAmount),
            paymentMethodId:
                IntFieldUpdateOperationsInput(set$: paymentMethodId),
            orderProduct: OrderProductUpdateManyWithoutOrderNestedInput(
              update: OrderProductUpdateWithWhereUniqueWithoutOrderInput(
                where: OrderProductWhereUniqueInput(id: orderProductId),
                data: OrderProductUpdateWithoutOrderInput(
                  product:
                      ProductUpdateOneRequiredWithoutOrderProductNestedInput(
                    connect: ProductWhereUniqueInput(id: productId),
                  ),
                  price: FloatFieldUpdateOperationsInput(set$: price),
                  isProductUsed:
                      BoolFieldUpdateOperationsInput(set$: isProductUsed),
                  productExpireDate: NullableDateTimeFieldUpdateOperationsInput(
                    set$: PrismaUnion.zero(
                      DateTime.parse(productExpireDate),
                    ),
                  ),
                ),
              ),
            ),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
          ),
        );
        var orderObject = jsonEncode(order);
        return Response.ok(orderObject, headers: {
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

    //delete order
    router.delete('/deleteOrder/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var order = await prisma.order.delete(
          where: OrderWhereUniqueInput(id: uid),
        );
        var orderObject = jsonEncode(order);
        return Response.ok(orderObject, headers: {
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
