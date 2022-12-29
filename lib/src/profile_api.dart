import '../dart_server.dart';

class ProfileApi {
  Handler get router {
    final router = Router();
    //get user Profile
    router.get('/', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload.queryParameters['id'].toInt();
      var profile = await prisma.profile
          .findUnique(where: ProfileWhereUniqueInput(id: id));
      var usersObject = jsonEncode(profile);
      return Response.ok('User Profile Is: $usersObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });
    //create user profile
    router.post('/createProfile', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var firstName = payload['firstName'];
      var lastName = payload['lastName'];
      var addressLine1 = payload['addressLine1'];
      var addressLine2 = payload['addressLine2'];
      var city = payload['city'];
      var state = payload['state'];
      var country = payload['country'];
      var phone = payload['phone'];
      var postCode = payload['postCode'];
      var longitude = payload['longitude'];
      var latitude = payload['latitude'];
      var images = payload['images'];
      var profile = await prisma.profile.create(
        data: ProfileCreateInput(
          firstName: firstName,
          lastName: lastName,
          addressLine1: addressLine1,
          addressLine2: addressLine2,
          city: city,
          state: state,
          country: country,
          phone: phone,
          postCode: postCode,
          longitude: longitude,
          latitude: latitude,
          images: images,
        ),
      );
      var profileObject = jsonEncode(profile);
      return Response.ok('Profile Created Succesfully: $profileObject\n',
          headers: {'Content-Type': 'application/json'});
    });
    //delete user profile
    router.delete('/deleteProfile', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload.queryParameters['id'].toInt();
      var profile =
          await prisma.profile.delete(where: ProfileWhereUniqueInput(id: id));
      var profileObject = jsonEncode(profile);
      return Response.ok('Profile Deleted Succesfully: $profileObject\n',
          headers: {'Content-Type': 'application/json'});
    });
    //update user profile
    router.put('/updateProfile', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload.queryParameters['id'].toInt();
      var firstName = payload['firstName'];
      var lastName = payload['lastName'];
      var addressLine1 = payload['addressLine1'];
      var addressLine2 = payload['addressLine2'];
      var city = payload['city'];
      var state = payload['state'];
      var country = payload['country'];
      var phone = payload['phone'];
      var postCode = payload['postCode'];
      var longitude = payload['longitude'];
      var latitude = payload['latitude'];
      var images = payload['images'];
      var profile = await prisma.profile.update(
        where: ProfileWhereUniqueInput(id: id),
        data: ProfileUpdateInput(
          firstName: firstName,
          lastName: lastName,
          addressLine1: addressLine1,
          addressLine2: addressLine2,
          city: city,
          state: state,
          country: country,
          phone: phone,
          postCode: postCode,
          longitude: longitude,
          latitude: latitude,
          images: images,
        ),
      );
      var profileObject = jsonEncode(profile);
      return Response.ok('Profile Updated Succesfully: $profileObject\n',
          headers: {'Content-Type': 'application/json'});
    });
    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
