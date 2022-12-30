import '../dart_server.dart';

class AmenistiesApi {
  Handler get router {
    final router = Router();
    //get all amenisties
    router.get('/', (Request request) async {
      var amenisties = await prisma.amenities.findMany();
      var amenistiesObject = jsonEncode(amenisties);
      return Response.ok('Post Is: $amenistiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get amenisties by id
    router.get('/<id|[0-9]+>', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var amenisties = await prisma.amenities.findUnique(
        where: AmenitiesWhereUniqueInput(id: int.parse(id)),
      );
      var amenistiesObject = jsonEncode(amenisties);
      return Response.ok('Post by ID Is: $amenistiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create amenisties
    router.post('/createAmenisties', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var name = payload['name'];
      var slug = payload['slug'];
      var description = payload['description'];
      var published = payload['published'];
      var categoryId = payload['categoryId'];
      var amenisties = await prisma.amenities.create(
        data: AmenitiesCreateInput(
          name: name,
          slug: PrismaUnion.zero(slug),
          description: PrismaUnion.zero(description),
          published: published,
          category: CategoryCreateNestedOneWithoutAmenitiesInput(
            connect: CategoryWhereUniqueInput(id: categoryId),
          ),
        ),
      );
      var amenistiesObject = jsonEncode(amenisties);
      return Response.ok('Post by ID Is: $amenistiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update amenisties
    router.put('/updateAmenisties', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var name = payload['name'];
      var slug = payload['slug'];
      var description = payload['description'];
      var published = payload['published'];
      var categoryId = payload['categoryId'];
      var amenisties = await prisma.amenities.update(
        where: AmenitiesWhereUniqueInput(id: int.parse(id)),
        data: AmenitiesUpdateInput(
          name: StringFieldUpdateOperationsInput(set$: name),
          slug: NullableStringFieldUpdateOperationsInput(set$: slug),
          description:
              NullableStringFieldUpdateOperationsInput(set$: description),
          published: BoolFieldUpdateOperationsInput(set$: published),
          category: CategoryUpdateOneRequiredWithoutAmenitiesNestedInput(
            update: CategoryUpdateWithoutAmenitiesInput(parentId: categoryId),
          ),
        ),
      );
      var amenistiesObject = jsonEncode(amenisties);
      return Response.ok('Post by ID Is: $amenistiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete amenisties
    router.delete('/deleteAmenisties', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var amenisties = await prisma.amenities.delete(
        where: AmenitiesWhereUniqueInput(id: int.parse(id)),
      );
      var amenistiesObject = jsonEncode(amenisties);
      return Response.ok('Post by ID Is: $amenistiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
