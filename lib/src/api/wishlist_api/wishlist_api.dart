// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class WishListApi {
  Handler get router {
    final router = Router();
    //get all whishlist
    router.get('/', (Request request) async {
      try {
        var wishlist = await prisma.wishlist.findMany();
        var wishlistObject = jsonEncode(wishlist);
        return Response.ok(wishlistObject, headers: {
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

    //get wishlist by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var wishlist = await prisma.wishlist.findUnique(
          where: WishlistWhereUniqueInput(id: uid),
        );
        var wishlistObject = jsonEncode(wishlist);
        return Response.ok(wishlistObject, headers: {
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

    //get wishlist by user id
    router.get('/user/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var wishlist = await prisma.wishlist.findMany(
            where: WishlistWhereInput(userId: IntFilter(equals: uid)));
        var wishlistObject = jsonEncode(wishlist);
        return Response.ok(wishlistObject, headers: {
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

    //create wishlist
    router.post('/addToWishlist', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var postId = payload['postId'];
        var userId = payload['userId'];
        var wishlist = await prisma.wishlist.create(
          data: WishlistCreateInput(
            post: PostCreateNestedOneWithoutWishlistInput(
              connect: PostWhereUniqueInput(id: postId),
            ),
            user: UsersCreateNestedOneWithoutWishlistsInput(
              connect: UsersWhereUniqueInput(id: userId),
            ),
          ),
        );
        var wishlistObject = jsonEncode(wishlist);
        return Response.ok(wishlistObject, headers: {
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

    //update wishlist
    router.put('/updateWishlit', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var postId = payload['postId'];
        var userId = payload['userId'];
        var wishlist = await prisma.wishlist.update(
          where: WishlistWhereUniqueInput(id: id),
          data: WishlistUpdateInput(
            post: PostUpdateOneRequiredWithoutWishlistNestedInput(
              connect: PostWhereUniqueInput(id: postId),
            ),
            user: UsersUpdateOneRequiredWithoutWishlistsNestedInput(
              connect: UsersWhereUniqueInput(id: userId),
            ),
          ),
        );
        var wishlistObject = jsonEncode(wishlist);
        return Response.ok(wishlistObject, headers: {
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

    //delete wishlist
    router.delete('/deleteFromWishlit', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var wishlist = await prisma.wishlist.delete(
          where: WishlistWhereUniqueInput(id: uid),
        );
        var wishlistObject = jsonEncode(wishlist);
        return Response.ok(wishlistObject, headers: {
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
