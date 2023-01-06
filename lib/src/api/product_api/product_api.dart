import '/dart_server.dart';

class ProductApi {
  Handler get router {
    final router = Router();
    //get all products
    router.get('/', (Request request) async {
      var product = await prisma.product.findMany();
      var productObject = jsonEncode(product);
      return Response.ok('product Is: $productObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get product by id
    router.get('/<id|[0-9]+>', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var product = await prisma.product.findUnique(
        where: ProductWhereUniqueInput(id: int.parse(id)),
      );
      var productObject = jsonEncode(product);
      return Response.ok('product by ID Is: $productObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create product
    router.post('/createProduct', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var price = payload['price'];
      var salePrice = payload['salePrice'];
      var image = payload['image'];
      var productLifeInDays = payload['productLifeInDays'];
      var productType = payload['productType'];
      ProductType productTypeEnum = ProductType.values
          .firstWhere((e) => e.toString() == 'ProductType.' + productType);
      var description = payload['description'];
      var status = payload['status'];
      CommonStatus productStatus = CommonStatus.values
          .firstWhere((e) => e.toString() == 'ProductStatus.' + status);
      var product = await prisma.product.create(
        data: ProductCreateInput(
          title: title,
          price: price,
          salePrice: salePrice,
          image: image,
          productLifeInDays: productLifeInDays,
          productType: productTypeEnum,
          description: PrismaUnion.zero(description),
          status: productStatus,
        ),
      );
      var productObject = jsonEncode(product);
      return Response.ok('product Created: $productObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update product
    router.put('/updateProduct', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var title = payload['title'];
      var price = payload['price'];
      var salePrice = payload['salePrice'];
      var image = payload['image'];
      var productLifeInDays = payload['productLifeInDays'];
      var productType = payload['productType'];
      ProductType productTypeEnum = ProductType.values
          .firstWhere((e) => e.toString() == 'ProductType.' + productType);
      var description = payload['description'];
      var status = payload['status'];
      CommonStatus productStatus = CommonStatus.values
          .firstWhere((e) => e.toString() == 'ProductStatus.' + status);
      var product = await prisma.product.update(
        where: ProductWhereUniqueInput(id: id),
        data: ProductUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: title),
          price: FloatFieldUpdateOperationsInput(set$: price),
          salePrice: FloatFieldUpdateOperationsInput(set$: salePrice),
          image: StringFieldUpdateOperationsInput(set$: image),
          productLifeInDays:
              IntFieldUpdateOperationsInput(set$: productLifeInDays),
          productType:
              EnumProductTypeFieldUpdateOperationsInput(set$: productTypeEnum),
          description: NullableStringFieldUpdateOperationsInput(
            set$: PrismaUnion.zero(description),
          ),
          status:
              EnumCommonStatusFieldUpdateOperationsInput(set$: productStatus),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var productObject = jsonEncode(product);
      return Response.ok('product Created: $productObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete product
    router.delete('/deleteProduct', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var product = await prisma.product.delete(
        where: ProductWhereUniqueInput(id: int.parse(id)),
      );
      var productObject = jsonEncode(product);
      return Response.ok('product Deleted: $productObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
