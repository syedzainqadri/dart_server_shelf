FROM google/dart

WORKDIR /app
COPY pubspec.* /app/
RUN pub get 
COPY . /app/
RUN pub get --offline 

CMD []

ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]

# Service must listen to $PORT environment variable.
# This default value facilitates local development.
EXPOSE 8080
ENV PORT 8080