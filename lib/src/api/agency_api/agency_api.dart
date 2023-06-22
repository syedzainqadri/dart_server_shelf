import '/dart_server.dart';

class AgencyApi {
  Handler get router {
    final router = Router();
    //get all agency
    router.get('/', (Request request) async {
      try {
        var agency = await prisma.agency.findMany();
        var agencyObject = jsonEncode(agency);
        return Response.ok(agencyObject, headers: {
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

    //get agency by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var agency = await prisma.agency.findUnique(
          where: AgencyWhereUniqueInput(id: uid),
        );
        var agencyObject = jsonEncode(agency);
        return Response.ok(agencyObject, headers: {
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

    //create agency
    router.post('/createAgency', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var title = payload['title'];
        var ownerName = payload['ownerName'];
        var country = payload['country'];
        var email = payload['email'];
        var address = payload['address'];
        var city = payload['city'];
        var state = payload['state'];
        var description = payload['description'];
        var mobile = payload['mobile'];
        var userID = payload['userID'];
        var featuredImage = payload['featuredImage'];
        var logoImage = payload['logoImage'];
        var purpose = payload['purpose'];
        var propertyType = payload['propertyType'];
        var slug = payload['slug'];
        var status = payload['status'];
        var agency = await prisma.agency.create(
          data: AgencyCreateInput(
            title: title,
            ownerName: PrismaUnion.zero(ownerName),
            country: PrismaUnion.zero(country),
            email: PrismaUnion.zero(email),
            address: PrismaUnion.zero(address),
            city: PrismaUnion.zero(city),
            state: PrismaUnion.zero(state),
            description: PrismaUnion.zero(description),
            purpose: PrismaUnion.zero(purpose),
            propertyType: PrismaUnion.zero(propertyType),
            mobile: PrismaUnion.zero(mobile),
            featuredImage: PrismaUnion.zero(featuredImage),
            logoImage: PrismaUnion.zero(logoImage),
            users: UsersCreateNestedOneWithoutAgencyInput(
              connect: UsersWhereUniqueInput(id: userID),
            ),
            slug: SlugCreateNestedOneWithoutAgencyInput(
              create: SlugCreateWithoutAgencyInput(
                slug: slug,
                type: SlugType.PAGE,
              ),
            ),
            status: PrismaUnion.zero(status),
          ),
        );
        var agencyObject = jsonEncode(agency);
        return Response.ok(agencyObject, headers: {
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

    //update agency
    router.put('/updateAgency', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'];
        var title = payload['title'];
        var ownerName = payload['ownerName'];
        var country = payload['country'];
        var email = payload['email'];
        var address = payload['address'];
        var state = payload['state'];
        var city = payload['city'];
        var description = payload['description'];
        var mobile = payload['mobile'];
        var featuredImage = payload['featuredImage'];
        var logoImage = payload['logoImage'];
        var propertyType = payload['propertyType'];
        var purpose = payload['purpose'];
        var status = payload['status'];
        var agency = await prisma.agency.update(
          where: AgencyWhereUniqueInput(id: id),
          data: AgencyUpdateInput(
            title: StringFieldUpdateOperationsInput(set$: title),
            ownerName: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(ownerName),
            ),
            country: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(country),
            ),
            state: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(state),
            ),
            city: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(city),
            ),
            email: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(email)),
            address: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(address)),
            description: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(description)),
            mobile: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(mobile)),
            featuredImage: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(featuredImage)),
            logoImage: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(logoImage)),
            purpose: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(purpose),
            ),
            propertyType: NullableStringFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(propertyType)),
            updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
            status: NullableBoolFieldUpdateOperationsInput(
                set$: PrismaUnion.zero(status)),
          ),
        );
        var agencyObject = jsonEncode(agency);
        return Response.ok(agencyObject, headers: {
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

    //delete agency
    router.delete('/deleteAgency/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var agency = await prisma.agency.delete(
          where: AgencyWhereUniqueInput(id: uid),
        );
        var agencyObject = jsonEncode(agency);
        return Response.ok(agencyObject, headers: {
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
