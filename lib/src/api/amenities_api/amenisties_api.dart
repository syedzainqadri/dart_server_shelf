import '/dart_server.dart';

class AmenitiesApi {
  Handler get router {
    final router = Router();
    //get all amenisties
    router.get('/', (Request request) async {
      var amenities = await prisma.amenities.findMany();
      var amenitiesObject = jsonEncode(amenities);
      return Response.ok('Post Is: $amenitiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get amenisties by id
    router.get('/id', (Request request, String id) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var amenities = await prisma.amenities.findUnique(
        where: AmenitiesWhereUniqueInput(id: int.parse(id)),
      );
      var amenitiesObject = jsonEncode(amenities);
      return Response.ok('Post by ID Is: $amenitiesObject\n', headers: {
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
      var amenities = await prisma.amenities.create(
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
      var amenitiesObject = jsonEncode(amenities);
      return Response.ok('Post by ID Is: $amenitiesObject\n', headers: {
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
      var amenities = await prisma.amenities.update(
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
      var amenitiesObject = jsonEncode(amenities);
      return Response.ok('Amenisties Updated Result: $amenitiesObject\n',
          headers: {
            'Content-Type': 'application/json',
          });
    });

    //delete amenisties
    router.delete('/deleteAmenisties', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var amenities = await prisma.amenities.delete(
        where: AmenitiesWhereUniqueInput(id: int.parse(id)),
      );
      var amenitiesObject = jsonEncode(amenities);
      return Response.ok('Post by ID Is: $amenitiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
