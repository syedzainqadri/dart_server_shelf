FROM dart:stable

COPY . /dart_server

WORKDIR /dart_server

RUN mkdir build

RUN dart compile exe ./bin/server.dart -o ./build/server

CMD [ "./build/server" ]