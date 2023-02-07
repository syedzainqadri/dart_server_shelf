# # Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
# FROM dart:stable AS build

# COPY . /dart_server/
# # Resolve app dependencies.
# WORKDIR /dart_server
# RUN mkdir build
# COPY pubspec.* ./
# RUN dart pub get

# # Copy app source code and AOT compile it.
# COPY . .
# # Ensure packages are still up-to-date if anything has changed
# RUN dart pub get --offline
# RUN dart compile exe ./bin/server.dart -o ./build/server

# # Build minimal serving image from AOT-compiled `/server` and required system
# # libraries and configuration files stored in `/runtime/` from the build stage.
# # FROM scratch
# # COPY --from=build /runtime/ /
# # COPY --from=build /app/bin/server /app/bin/

# # Start server.
# EXPOSE 8080
# CMD ["./build/server"]


FROM dart:stable

COPY . /dart_server

WORKDIR /dart_server

COPY pubspec.* ./
RUN dart pub get

RUN mkdir build

RUN dart compile exe ./bin/server.dart -o ./build/server

CMD [ "./build/server" ]

