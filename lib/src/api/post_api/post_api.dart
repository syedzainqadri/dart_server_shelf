// ignore_for_file: prefer_interpolation_to_compose_strings
import '/dart_server.dart';

class PostApi {
  Handler get router {
    final router = Router();
    //get all posts
    router.get('/', (Request request) async {
      try {
        var post = await prisma.post.findMany();
        var postObject = jsonEncode(post);
        return Response.ok(postObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //get post by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var post = await prisma.post.findUnique(
          where: PostWhereUniqueInput(id: uid),
        );
        var postObject = jsonEncode(post);
        return Response.ok(postObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //get post by user id
    router.get('/user/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var post = await prisma.post
            .findMany(where: PostWhereInput(authorId: IntFilter(equals: uid)));
        var postObject = jsonEncode(post);
        return Response.ok(postObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //create post
    router.post('/createPost', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var description = payload['description'];
        var featuredImages = payload['featuredImages'];
        var galleryImages = payload['galleryImages'];
        var video = payload['video'];
        var longDescription = payload['longDescription'];
        var longitude = payload['longitude'];
        var latitude = payload['latitude'];
        var plotNumber = payload['plotNumber'];
        var price = payload['price'];
        var city = payload['city'];
        var area = payload['area'];
        var isInstallmentAvailable = payload['isInstallmentAvailable'];
        var advanceAmount = payload['advanceAmount'];
        var noOfInstallments = payload['noOfInstallments'];
        var monthlyInstallments = payload['monthlyInstallments'];
        var readyForPossession = payload['readyForPossession'];
        var purpose = payload['purpose'];
        print(purpose);
        Purpose purposeEnum = Purpose.values
            .firstWhere((e) => e.toString() == 'Purpose.' + purpose);
        var areaSizeUnit = payload['areaSizeUnit']['AreaSizeUnit'];
        AreaSizeUnit areaSizeUnitenum = AreaSizeUnit.values
            .firstWhere((e) => e.toString() == 'AreaSizeUnit.' + areaSizeUnit);
        var totalAreaSize = payload["totalAreaSize"];
        var bedroooms = payload['bedroooms'];
        var bathrooms = payload['bathrooms'];
        var authorId = payload['authorId'];
        var categoryId = payload['categoryId'];
        var metaTitle = payload['metaTitle'];
        var metaDescription = payload['metaDescription'];
        var slug = payload['slug'];
        var status = payload['status'];
        var showContactDetails = payload['showContactDetails'];
        var propertyNumber = payload['propertyNumber'];
        var amenitiesNames = payload['amenitiesNames'];
        var amenitiesIconCodes = payload['amenitiesIconCodes'];
        var post = await prisma.post.create(
          data: PostCreateInput(
            title: title,
            description: PrismaUnion.zero(description),
            featuredImages: PrismaUnion.zero(featuredImages),
            galleryImages: PrismaUnion.zero(galleryImages),
            video: video,
            longDescription: PrismaUnion.zero(longDescription),
            longitude: PrismaUnion.zero(longitude),
            latitude: PrismaUnion.zero(latitude),
            plotNumber: PrismaUnion.zero(plotNumber),
            price: PrismaUnion.zero(price),
            city: PrismaUnion.zero(city),
            area: PrismaUnion.zero(area),
            isInstallmentAvailable: PrismaUnion.zero(isInstallmentAvailable),
            advanceAmount: advanceAmount,
            noOfInstallments: noOfInstallments,
            monthlyInstallments: monthlyInstallments,
            readyForPossession: PrismaUnion.zero(readyForPossession),
            areaSizeUnit: PrismaUnion.zero(areaSizeUnitenum),
            totalAreaSize: totalAreaSize,
            bedroooms: bedroooms,
            bathroom: bathrooms,
            purpose: PrismaUnion.zero(purposeEnum),
            author: UsersCreateNestedOneWithoutPostsInput(
              connect: UsersWhereUniqueInput(id: authorId),
            ),
            category: CategoryCreateNestedOneWithoutPostsInput(
              connect: CategoryWhereUniqueInput(id: categoryId),
            ),
            slug: SlugCreateNestedOneWithoutPostsInput(
              create: SlugCreateWithoutPostsInput(
                slug: slug,
                type: SlugType.POST,
              ),
            ),
            status: status,
            postmeta: PostMetaCreateNestedManyWithoutPostInput(
              create: PostMetaCreateWithoutPostInput(
                metaTitle: metaTitle,
                metaDescription: PrismaUnion.zero(metaDescription),
                status: status,
              ),
            ),
            showContactDetails: PrismaUnion.zero(showContactDetails),
            propertyNumber: PrismaUnion.zero(propertyNumber),
            amenitiesNames: amenitiesNames,
            amenitiesIconCodes: amenitiesIconCodes,
          ),
        );
        var postObject = jsonEncode(post);
        return Response.ok(postObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //update post
    router.put('/updatePost', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var title = payload['title'];
        var description = payload['description'];
        var featuredImages = payload['featuredImages'];
        var galleryImages = payload['galleryImages'];
        var video = payload['video'];
        var longDescription = payload['longDescription'];
        var longitude = payload['longitude'];
        var latitude = payload['latitude'];
        var plotNumber = payload['plotNumber'];
        var price = payload['price'];
        var city = payload['city'];
        var area = payload['area'];
        var isInstallmentAvailable = payload['isInstallmentAvailable'];
        var advanceAmount = payload['advanceAmount'];
        var noOfInstallments = payload['noOfInstallments'];
        var monthlyInstallments = payload['monthlyInstallments'];
        var readyForPossession = payload['readyForPossession'];
        var areaSizeUnit = payload['areaSizeUnit']['AreaSizeUnit'];
        AreaSizeUnit areaSizeUnitenum = AreaSizeUnit.values
            .firstWhere((e) => e.toString() == 'AreaSizeUnit.' + areaSizeUnit);
        var bedroooms = payload['bedroooms'];
        var bathrooms = payload['bathrooms'];
        var amenitiesNames = payload['amenitiesNames'];
        var amenitiesIconCodes = payload['amenitiesIconCodes'];
        var authorId = payload['authorId'];
        var categoryId = payload['categoryId'];
        var metaTitle = payload['metaTitle'];
        var metaDescription = payload['metaDescription'];
        var status = payload['status'];
        var showContactDetails = payload['showContactDetails'];
        var post = await prisma.post.update(
          where: PostWhereUniqueInput(id: int.parse(id)),
          data: PostUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            description: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(description),
            ),
            featuredImages: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(featuredImages),
            ),
            galleryImages: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(galleryImages),
            ),
            video: StringFieldUpdateOperationsInput(set$: video),
            longDescription: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(longDescription),
            ),
            longitude: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(longitude),
            ),
            latitude: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(latitude),
            ),
            plotNumber: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(plotNumber),
            ),
            price: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(price),
            ),
            city: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(city),
            ),
            area: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(area),
            ),
            isInstallmentAvailable: NullableBoolFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(isInstallmentAvailable),
            ),
            advanceAmount:
                StringFieldUpdateOperationsInput(set$: advanceAmount),
            noOfInstallments:
                IntFieldUpdateOperationsInput(set$: noOfInstallments),
            monthlyInstallments:
                StringFieldUpdateOperationsInput(set$: monthlyInstallments),
            readyForPossession: NullableBoolFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(readyForPossession),
            ),
            areaSizeUnit: NullableEnumAreaSizeUnitFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(areaSizeUnitenum)),
            bedroooms: IntFieldUpdateOperationsInput(set$: bedroooms),
            bathroom: IntFieldUpdateOperationsInput(set$: bathrooms),
            amenitiesIconCodes:
                StringFieldUpdateOperationsInput(set$: amenitiesIconCodes),
            amenitiesNames:
                StringFieldUpdateOperationsInput(set$: amenitiesNames),
            author: UsersUpdateOneRequiredWithoutPostsNestedInput(
              connect: UsersWhereUniqueInput(id: authorId),
            ),
            category: CategoryUpdateOneRequiredWithoutPostsNestedInput(
              connect: CategoryWhereUniqueInput(id: categoryId),
            ),
            postmeta: PostMetaUpdateManyWithoutPostNestedInput(
              create: PostMetaCreateWithoutPostInput(
                metaTitle: metaTitle,
                metaDescription: PrismaUnion.zero(
                  metaDescription,
                ),
              ),
            ),
            status: BoolFieldUpdateOperationsInput(
              set$: status,
            ),
            updatedAt: DateTimeFieldUpdateOperationsInput(
              set$: DateTime.now(),
            ),
            showContactDetails: NullableBoolFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(showContactDetails),
            ),
          ),
        );
        var postObject = jsonEncode(post);
        return Response.ok(postObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientValidationError {
        return Response.forbidden(
            'Sorry you dont have the permission to access this resource');
      }
    });

    //delete post //TODO: Problem delteing post issue with foreign key
    router.delete('/deletePost/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var post = await prisma.post.delete(
          where: PostWhereUniqueInput(id: uid),
        );
        var postObject = jsonEncode(post);
        return Response.ok(postObject, headers: {
          'Content-Type': 'application/json',
        });
      } on PrismaClientInitializationError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientKnownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientRustPanicError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
              'Content-Type': 'application/json',
            });
      } on PrismaClientUnknownRequestError catch (e) {
        return Response.internalServerError(
            body: 'Error is:\n ${e.message}',
            headers: {
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
