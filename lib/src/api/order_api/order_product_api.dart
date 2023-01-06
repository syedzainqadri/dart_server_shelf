import '/dart_server.dart';

class OrderProductApi {
  Handler get router {
    final router = Router();
    //get all orderProduct
    router.get('/', (Request request) async {
      var orderProduct = await prisma.orderProduct.findMany();
      var orderObject = jsonEncode(orderProduct);
      return Response.ok('orderProduct Is: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get orderProduct by id
    router.get('/<id|[0-9]+>', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var orderProduct = await prisma.orderProduct.findUnique(
        where: OrderProductWhereUniqueInput(id: int.parse(id)),
      );
      var orderObject = jsonEncode(orderProduct);
      return Response.ok('orderProduct by ID Is: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create orderProduct
    router.post('/createOrderProduct', (Request request) async {
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
          //TODO: post cannot be required as it is a relation and will come in future
          post: PostCreateNestedOneWithoutOrderProductInput(
              connect: PostWhereUniqueInput(id: post)),
          productActiveDate: PrismaUnion.zero(productActiveDate),
          productExpireDate: PrismaUnion.zero(productExpireDate),
        ),
      );
      var orderObject = jsonEncode(orderProduct);
      return Response.ok('orderProduct Created: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update orderProduct
    router.put('/updateOrderProduct', (Request request) async {
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
      return Response.ok('orderProduct Created: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete orderProduct
    router.delete('/deleteOrderProduct', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var orderProduct = await prisma.orderProduct.delete(
        where: OrderProductWhereUniqueInput(id: id),
      );
      var orderObject = jsonEncode(orderProduct);
      return Response.ok('orderProduct Deleted: $orderObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
