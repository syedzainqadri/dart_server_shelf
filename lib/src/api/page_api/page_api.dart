// ignore_for_file: prefer_interpolation_to_compose_strings

import '/dart_server.dart';

class PageApi {
  Handler get router {
    final router = Router();
    //get all pages
    router.get('/', (Request request) async {
      try {
        var page = await prisma.page.findMany();
        var pageObject = jsonEncode(page);
        return Response.ok(pageObject, headers: {
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

    //get page by id
    router.get('/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var page = await prisma.page.findUnique(
          where: PageWhereUniqueInput(id: uid),
        );
        var pageObject = jsonEncode(page);
        return Response.ok(pageObject, headers: {
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

    //create page
    router.post('/createPage', (Request request) async {
      try {
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
              ),
            ),
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
        var pageObject = jsonEncode(page);
        return Response.ok(pageObject, headers: {
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

    //update page
    router.put('/updatePage', (Request request) async {
      try {
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
        return Response.ok(pageObject, headers: {
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

    //delete page
    router.delete('/deletePage/<id>', (Request request, String id) async {
      try {
        var uid = int.parse(id);
        var page = await prisma.page.delete(
          where: PageWhereUniqueInput(id: uid),
        );
        var pageObject = jsonEncode(page);
        return Response.ok(pageObject, headers: {
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

    final handler =
        const Pipeline().addMiddleware(checkAuthorisation()).addHandler(router);
    return handler;
  }
}
