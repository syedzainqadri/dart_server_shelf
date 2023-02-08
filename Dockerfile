FROM dart:stable as builder
COPY . /dart_server
WORKDIR /dart_server
COPY pubspec.* ./
RUN dart pub get
RUN mkdir build
RUN dart compile exe ./bin/server.dart -o ./build/server
FROM debian:buster-slim
COPY --from=builder /dart_server/build /bin
COPY --from=builder /runtime/ /
CMD [ "server" ]