import '/dart_server.dart';

class AgencyApi {
  Handler get router {
    final router = Router();
    //get all agency
    router.get('/', (Request request) async {
      var agency = await prisma.agency.findMany();
      var agencyObject = jsonEncode(agency);
      return Response.ok('Post Is: $agencyObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get agency by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var amenisties = await prisma.agency.findUnique(
        where: AgencyWhereUniqueInput(id: id),
      );
      var amenistiesObject = jsonEncode(amenisties);
      return Response.ok('Agency by ID Is: $amenistiesObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create agency
    router.post('/createAgency', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var companyTitle = payload['companyTitle'];
      var ownerName = payload['ownerName'];
      var ownerMessage = payload['ownerMessage'];
      var ownerProfilePic = payload['ownerProfilePic'];
      var ownerDesignation = payload['ownerDesignation'];
      var country = payload['country'];
      var email = payload['email'];
      var website = payload['website'];
      var address = payload['address'];
      var description = payload['description'];
      var mobile = payload['mobile'];
      var landline = payload['landLine'];
      var whatsapp = payload['whatsapp'];
      var userID = payload['userID'];
      var featuredImage = payload['featuredImage'];
      var logoImage = payload['logoImage'];
      var slug = payload['slug'];
      var refrenceId = payload['refrenceId'];
      var agency = await prisma.agency.create(
        data: AgencyCreateInput(
          title: title,
          companyTitle: PrismaUnion.zero(companyTitle),
          ownerName: PrismaUnion.zero(ownerName),
          ownerMessage: PrismaUnion.zero(ownerMessage),
          ownerProfilePic: PrismaUnion.zero(ownerProfilePic),
          ownerDesignation: PrismaUnion.zero(ownerDesignation),
          country: PrismaUnion.zero(country),
          email: PrismaUnion.zero(email),
          website: PrismaUnion.zero(website),
          address: PrismaUnion.zero(address),
          description: PrismaUnion.zero(description),
          mobile: PrismaUnion.zero(mobile),
          landline: PrismaUnion.zero(landline),
          whatsapp: PrismaUnion.zero(whatsapp),
          featuredImage: PrismaUnion.zero(featuredImage),
          logoImage: PrismaUnion.zero(logoImage),
          users: UsersCreateNestedOneWithoutAgencyInput(
            connect: UsersWhereUniqueInput(id: userID),
          ),
          slug: SlugCreateNestedOneWithoutAgencyInput(
            create: SlugCreateWithoutAgencyInput(
              slug: slug,
              type: SlugType.PAGE,
              referenceId: refrenceId,
            ),
          ),
        ),
      );
      var agencyObject = jsonEncode(agency);
      return Response.ok('Post by ID Is: $agencyObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update agency
    router.put('/updateAgency', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var title = payload['title'];
      var companyTitle = payload['companyTitle'];
      var ownerName = payload['ownerName'];
      var ownerMessage = payload['ownerMessage'];
      var ownerProfilePic = payload['ownerProfilePic'];
      var ownerDesignation = payload['ownerDesignation'];
      var country = payload['country'];
      var email = payload['email'];
      var website = payload['website'];
      var address = payload['address'];
      var description = payload['description'];
      var mobile = payload['mobile'];
      var landline = payload['landLine'];
      var whatsapp = payload['whatsapp'];
      var featuredImage = payload['featuredImage'];
      var logoImage = payload['logoImage'];
      var agency = await prisma.agency.update(
        where: AgencyWhereUniqueInput(id: id),
        data: AgencyUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: title),
          companyTitle: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(companyTitle)),
          ownerName: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(ownerName)),
          ownerMessage: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(ownerMessage)),
          ownerProfilePic: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(ownerProfilePic)),
          ownerDesignation: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(ownerDesignation)),
          country: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(country)),
          email: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(email)),
          website: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(website)),
          address: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(address)),
          description: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(description)),
          mobile: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(mobile)),
          landline: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(landline)),
          whatsapp: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(whatsapp)),
          featuredImage: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(featuredImage)),
          logoImage: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(logoImage)),
          updatedAt: DateTimeFieldUpdateOperationsInput(set$: DateTime.now()),
        ),
      );
      var agencyObject = jsonEncode(agency);
      return Response.ok('Post by ID Is: $agencyObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete agency
    router.delete('/deleteAgency', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var agency = await prisma.agency.delete(
        where: AgencyWhereUniqueInput(id: id),
      );
      var agencyObject = jsonEncode(agency);
      return Response.ok('Post by ID Is: $agencyObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
