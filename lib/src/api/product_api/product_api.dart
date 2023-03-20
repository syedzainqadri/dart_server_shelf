// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class ProductApi {
  Handler get router {
    final router = Router();
    //get all products
    router.get('/', (Request request) async {
      try {
        var product = await prisma.product.findMany();
        var productObject = jsonEncode(product);
        return Response.ok(productObject, headers: {
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

    //get product by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var product = await prisma.product.findUnique(
          where: ProductWhereUniqueInput(id: uid),
        );
        var productObject = jsonEncode(product);
        return Response.ok(productObject, headers: {
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

    //create product
    router.post('/createProduct', (Request request) async {
      try {
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
            .firstWhere((e) => e.toString() == 'CommonStatus.' + status);
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
        return Response.ok(productObject, headers: {
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

    //update product
    router.put('/updateProduct', (Request request) async {
      try {
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
            .firstWhere((e) => e.toString() == 'CommonStatus.' + status);
        var product = await prisma.product.update(
          where: ProductWhereUniqueInput(id: id),
          data: ProductUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            price: FloatFieldUpdateOperationsInput(set$: price),
            salePrice: FloatFieldUpdateOperationsInput(set$: salePrice),
            image: StringFieldUpdateOperationsInput(set$: image),
            productLifeInDays:
                IntFieldUpdateOperationsInput(set$: productLifeInDays),
            productType: EnumProductTypeFieldUpdateOperationsInput(
                set$: productTypeEnum),
            description: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(description),
            ),
            status:
                EnumCommonStatusFieldUpdateOperationsInput(set$: productStatus),
            updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
          ),
        );
        var productObject = jsonEncode(product);
        return Response.ok(productObject, headers: {
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

    //delete product
    router.delete('/deleteProduct/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var product = await prisma.product.delete(
          where: ProductWhereUniqueInput(id: uid),
        );
        var productObject = jsonEncode(product);
        return Response.ok(productObject, headers: {
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
