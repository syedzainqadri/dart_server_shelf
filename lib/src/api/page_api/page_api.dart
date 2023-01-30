// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class PageApi {
  Handler get router {
    final router = Router();
    //get all pages
    router.get('/', (Request request) async {
      var page = await prisma.page.findMany();
      var pageObject = jsonEncode(page);
      return Response.ok('page Is: $pageObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //get page by id
    router.get('/id', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var page = await prisma.page.findUnique(
        where: PageWhereUniqueInput(id: id),
      );
      var pageObject = jsonEncode(page);
      return Response.ok('page by ID Is: $pageObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //create page
    router.post('/createPage', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var title = payload['title'];
      var content = payload['content'];
      var featuredImage = payload['featuredImage'];
      var status = payload['status'];
      var slug = payload['slug'];
      var slugType = payload['slugType'];
      SlugType slugTypeEnum = SlugType.values
          .firstWhere((e) => e.toString() == 'SlugType.' + slugType);
      var refrenceId = payload['refrenceId'];
      var page = await prisma.page.create(
        data: PageCreateInput(
          title: title,
          content: PrismaUnion.zero(content),
          featuredImage: PrismaUnion.zero(featuredImage),
          status: status,
          slug: SlugCreateNestedOneWithoutPagesInput(
            create: SlugCreateWithoutPagesInput(
              slug: slug,
              type: slugTypeEnum,
              referenceId: refrenceId,
            ),
          ),
          createdAt: DateTime.now(), //TODO: Should not be required
          updatedAt: DateTime.now(), //TODO: Should not be required
        ),
      );
      var pageObject = jsonEncode(page);
      return Response.ok('page Created: $pageObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //update page
    router.put('/updatePage', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var title = payload['title'];
      var content = payload['content'];
      var featuredImage = payload['featuredImage'];
      var status = payload['status'];
      var slug = payload['slug'];
      var page = await prisma.page.update(
        where: PageWhereUniqueInput(id: id),
        data: PageUpdateInput(
          title: StringFieldUpdateOperationsInput(set$: title),
          status: BoolFieldUpdateOperationsInput(set$: status),
          content: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(content)),
          featuredImage: NullableStringFieldUpdateOperationsInput(
              set$: PrismaUnion.zero(featuredImage)),
          slug: SlugUpdateOneRequiredWithoutPagesNestedInput(
            update: SlugUpdateWithoutPagesInput(
              slug: StringFieldUpdateOperationsInput(set$: slug),
            ),
          ),
          updatedAt: DateTimeFieldUpdateOperationsInput(
            set$: DateTime.now(),
          ),
        ),
      );
      var pageObject = jsonEncode(page);
      return Response.ok('page Created: $pageObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    //delete page
    router.delete('/deletePage', (Request request) async {
      var payload = jsonDecode(await request.readAsString());
      var id = payload['id'];
      var page = await prisma.page.delete(
        where: PageWhereUniqueInput(id: id),
      );
      var pageObject = jsonEncode(page);
      return Response.ok('page Deleted: $pageObject\n', headers: {
        'Content-Type': 'application/json',
      });
    });

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
