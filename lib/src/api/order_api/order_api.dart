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
    router.get('/<id|[0-9]+>', (Request request, String id) async {
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
      var orderAmount = payload['orderAmount'].toDouble();
      var userId = payload['userId'].toInt();
      var paymentMethodId = payload['paymentMethodId'];
      var orderProduct = payload['orderProduct'];
      var order = await prisma.order.create(
        data: OrderCreateInput(
          orderAmount: orderAmount,
          user: UsersCreateNestedOneWithoutOrderInput(
            connect: UsersWhereUniqueInput(id: userId),
          ),
          paymentMethod: PaymentMethodCreateNestedOneWithoutOrderInput(
              connect: PaymentMethodWhereUniqueInput(id: paymentMethodId)),
          orderProduct: OrderProductCreateNestedManyWithoutOrderInput(
            connect: OrderProductWhereUniqueInput(id: orderProduct),
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
      var id = payload['id'].toInt();
      var orderAmount = payload['orderAmount'].toDouble();
      var userId = payload['userId'].toInt();
      var paymentMethodId = payload['paymentMethodId'];
      var orderProduct = payload['orderProduct'];
      var order = await prisma.order.update(
        where: OrderWhereUniqueInput(id: id),
        data: OrderUpdateInput(
          orderAmount: FloatFieldUpdateOperationsInput(set$: orderAmount),
          paymentMethod: PaymentMethodUpdateOneRequiredWithoutOrderNestedInput(
            connect: PaymentMethodWhereUniqueInput(id: paymentMethodId),
          ),
          orderProduct: OrderProductUpdateManyWithoutOrderNestedInput(
            connect: OrderProductWhereUniqueInput(id: orderProduct),
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
      var id = payload['id'].toInt();
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
