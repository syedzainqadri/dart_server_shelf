// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class WishListApi {
  Handler get router {
    final router = Router();
    //get all whishlist
    router.get('/', (Request request) async {
      var wishlist = await prisma.wishlit.findMany();
      //TODO check spellings for wishlist
      var wishlistObject = jsonEncode(wishlist);
      return Response.ok('Wishlit Is: $wishlistObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get wishlist by id
    router.get('/<id|[0-9]+>', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var wishlist = await prisma.wishlit.findUnique(
        where: WishlitWhereUniqueInput(id: int.parse(id)),
      );
      var wishlistObject = jsonEncode(wishlist);
      return Response.ok('Wishlit by ID Is: $wishlistObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get wishlist by user id
    router.get('/user/<id|[0-9]+>', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var wishlist =
          await prisma.wishlit.findMany(where: WishlitWhereInput(userId: id));
      var wishlistObject = jsonEncode(wishlist);
      return Response.ok('Wishlit by User ID Is: $wishlistObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create wishlist
    router.post('/createWishlit', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var postId = payload['postId'];
      var userId = payload['userId'];
      var wishlist = await prisma.wishlit.create(
        data: WishlitCreateInput(
          post: PostCreateNestedOneWithoutWishlistInput(
            connect: PostWhereUniqueInput(id: postId),
          ),
          user: UsersCreateNestedOneWithoutWishlistsInput(
            connect: UsersWhereUniqueInput(id: userId),
          ),
        ),
      );
      var wishlistObject = jsonEncode(wishlist);
      return Response.ok('Wishlit Created: $wishlistObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update wishlist
    router.put('/updateWishlit', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var postId = payload['postId'];
      var userId = payload['userId'];
      var wishlist = await prisma.wishlit.update(
        where: WishlitWhereUniqueInput(id: id),
        data: WishlitUpdateInput(
          post: PostUpdateOneRequiredWithoutWishlistNestedInput(
            connect: PostWhereUniqueInput(id: postId),
          ),
          user: UsersUpdateOneRequiredWithoutWishlistsNestedInput(
            connect: UsersWhereUniqueInput(id: userId),
          ),
        ),
      );
      var wishlistObject = jsonEncode(wishlist);
      return Response.ok('Wishlit Created: $wishlistObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete wishlist
    router.delete('/deleteWishlit/<id|[0-9]+>',
        (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var wishlist = await prisma.wishlit.delete(
        where: WishlitWhereUniqueInput(id: int.parse(id)),
      );
      var wishlistObject = jsonEncode(wishlist);
      return Response.ok('Wishlit Deleted: $wishlistObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
