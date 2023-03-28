import '/dart_server.dart';

class ProfileApi {
  Handler get router {
    final router = Router();
    //get user Profile
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var profile = await prisma.profile
            .findUnique(where: ProfileWhereUniqueInput(userId: uid));
        var usersObject = jsonEncode(profile);
        return Response.ok(usersObject, headers: {
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
    //get user profile by user Id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var profile = await prisma.profile
            .findUnique(where: ProfileWhereUniqueInput(id: uid));
        var usersObject = jsonEncode(profile);
        return Response.ok(usersObject, headers: {
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
    //create user profile
    router.post('/createProfile', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        print(payload);
        var firstName = payload['firstName'];
        var lastName = payload['lastName'];
        var addressLine1 = payload['addressLine1'];
        var addressLine2 = payload['addressLine2'];
        var city = payload['city'];
        var state = payload['state'];
        var country = payload['country'];
        var phone = payload['phone'];
        var postCode = payload['postCode'].toString();
        var longitude = payload['longitude'];
        var latitude = payload['latitude'];
        var images = payload['images'];
        var user = payload['user'];
        var contactPersonType = payload['contactPersonType'];
        CcontactPersonType contactPersonEnum = CcontactPersonType.values
            .firstWhere((e) =>
                e.toString() == 'CcontactPersonType.' + contactPersonType);
        var contactPersonName = payload['contactPersonName'];
        var email = payload['email'];
        var mobilePhone = payload['mobilePhone'];
        var landLine = payload['landLine'];
        var status = payload['status'];
        var profile = await prisma.profile.create(
          data: ProfileCreateInput(
            firstName: PrismaUnion.zero(firstName),
            //TODO: need to sort the slug out
            lastName: PrismaUnion.zero(lastName),
            slug: PrismaUnion.zero(firstName + lastName + user.toString()),
            addressLine1: PrismaUnion.zero(addressLine1),
            addressLine2: PrismaUnion.zero(addressLine2),
            city: PrismaUnion.zero(city),
            state: PrismaUnion.zero(state),
            country: PrismaUnion.zero(country),
            phone: PrismaUnion.zero(phone),
            postCode: PrismaUnion.zero(postCode),
            longitude: PrismaUnion.zero(longitude),
            latitude: PrismaUnion.zero(latitude),
            images: PrismaUnion.zero(images),
            user: UsersCreateNestedOneWithoutProfileInput(
              connect: UsersWhereUniqueInput(id: user),
            ),
            postContact: PostContactCreateNestedOneWithoutProfileInput(
              create: PostContactCreateWithoutProfileInput(
                  name: PrismaUnion.zero(contactPersonName),
                  email: PrismaUnion.zero(email),
                  phone: PrismaUnion.zero(mobilePhone),
                  landLine: PrismaUnion.zero(landLine),
                  ccontactPersonType: contactPersonEnum),
            ),
            status: status,
          ),
        );
        var profileObject = jsonEncode(profile);
        return Response.ok(profileObject,
            headers: {'Content-Type': 'application/json'});
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
    //delete user profile
    router.delete('/deleteProfile/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var profile = await prisma.profile
            .delete(where: ProfileWhereUniqueInput(id: uid));
        var profileObject = jsonEncode(profile);
        return Response.ok(profileObject,
            headers: {'Content-Type': 'application/json'});
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
    //update user profile
    router.put('/updateProfile', (Request request) async {
      try {
        var payload = jsonDecode(await request.readAsString());
        var id = payload['id'].toInt();
        var firstName = payload['firstName'];
        var lastName = payload['lastName'];
        var addressLine1 = payload['addressLine1'];
        var addressLine2 = payload['addressLine2'];
        var city = payload['city'];
        var state = payload['state'];
        var country = payload['country'];
        var phone = payload['phone'];
        var postCode = payload['postCode'].toString();
        var longitude = payload['longitude'];
        var latitude = payload['latitude'];
        var images = payload['images'];
        var profile = await prisma.profile.update(
          where: ProfileWhereUniqueInput(id: id),
          data: ProfileUpdateInput(
            firstName: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(firstName),
            ),
            lastName: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(lastName),
            ),
            addressLine1: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(addressLine1),
            ),
            addressLine2: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(addressLine2),
            ),
            city: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(city),
            ),
            state: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(state),
            ),
            country: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(country),
            ),
            phone: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(phone),
            ),
            postCode: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(postCode),
            ),
            longitude: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(longitude),
            ),
            latitude: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(latitude),
            ),
            images: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(images),
            ),
          ),
        );
        var profileObject = jsonEncode(profile);
        return Response.ok(profileObject,
            headers: {'Content-Type': 'application/json'});
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
