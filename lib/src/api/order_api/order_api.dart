import '/dart_server.dart';

class OrderApi {
  Handler get router {
    final router = Router();
    //get all orders
    router.get('/', (Request request) async {
      var order = await prisma.order.findMany();
      var orderObject = jsonEncode(order);
      return Response.ok('order Is: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get order by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var order = await prisma.order.findUnique(
        where: OrderWhereUniqueInput(id: int.parse(id)),
      );
      var orderObject = jsonEncode(order);
      return Response.ok('order by ID Is: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create order
    router.post('/createOrder', (Request request) async {
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
      return Response.ok('order Created: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update order
    router.put('/updateOrder', (Request request) async {
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
          paymentMethodId: IntFieldUpdateOperationsInput(set$: paymentMethodId),
          orderProduct: OrderProductUpdateManyWithoutOrderNestedInput(
            update: OrderProductUpdateWithWhereUniqueWithoutOrderInput(
              where: OrderProductWhereUniqueInput(id: orderProductId),
              data: OrderProductUpdateWithoutOrderInput(
                product: ProductUpdateOneRequiredWithoutOrderProductNestedInput(
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
      return Response.ok('order Created: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete order
    router.delete('/deleteOrder', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var order = await prisma.order.delete(
        where: OrderWhereUniqueInput(id: id),
      );
      var orderObject = jsonEncode(order);
      return Response.ok('order Deleted: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
