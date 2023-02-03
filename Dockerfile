# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* .
RUN dart pub get
COPY . .
RUN dart pub get --offline
# Copy over the entire app...
COPY --from=0 /app /app
# ...or copy specific files and directories you require at runtime, ex:
#COPY --from=0 /app/bin/server.dart /app/bin/server.dart
#COPY --from=0 /app/lib/ /app/lib/
#COPY --from=0 /app/static/ /app/static/
EXPOSE 8080
ENTRYPOINT ["/usr/lib/dart/bin/dart", "/app/bin/server.dart"]