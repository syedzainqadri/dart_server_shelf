// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class SlugApi {
  Handler get router {
    final router = Router();
    //get all slug
    router.get('/', (Request request) async {
      var slug = await prisma.slug.findMany();
      var slugObject = jsonEncode(slug);
      return Response.ok('Post Is: $slugObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get slug by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var slug = await prisma.slug.findUnique(
        where: SlugWhereUniqueInput(id: id),
      );
      var slugObject = jsonEncode(slug);
      return Response.ok('Post by ID Is: $slugObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create slug
    router.post('/createSlug', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var slugName = payload['slug'];
      var type = payload['type'];
      SlugType typeEnum =
          SlugType.values.firstWhere((e) => e.toString() == 'SlugType.' + type);
      var referenceId = payload['referenceId'];
      var slug = await prisma.slug.create(
        data: SlugCreateInput(
          slug: slugName,
          type: typeEnum,
          referenceId: referenceId,
        ),
      );
      var slugObject = jsonEncode(slug);
      return Response.ok('Post by ID Is: $slugObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update slug
    router.put('/updateSlug', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var slugName = payload['slug'];
      var type = payload['type'];
      SlugType typeEnum =
          SlugType.values.firstWhere((e) => e.toString() == 'SlugType.' + type);
      var referenceId = payload['referenceId'];

      var slug = await prisma.slug.update(
        where: SlugWhereUniqueInput(id: id),
        data: SlugUpdateInput(
          slug: StringFieldUpdateOperationsInput(set$: slugName),
          type: EnumSlugTypeFieldUpdateOperationsInput(set$: typeEnum),
          referenceId: IntFieldUpdateOperationsInput(set$: referenceId),
        ),
      );
      var slugObject = jsonEncode(slug);
      return Response.ok('Post by ID Is: $slugObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete slug
    router.delete('/deleteSlug', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'].toInt();
      var slug = await prisma.slug.delete(
        where: SlugWhereUniqueInput(id: id),
      );
      var slugObject = jsonEncode(slug);
      return Response.ok('Post by ID Is: $slugObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
