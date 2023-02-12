# FROM dart:stable as builder
# COPY . /dart_server
# WORKDIR /dart_server
# COPY pubspec.* ./
# RUN dart pub get
# RUN mkdir build
# RUN dart compile exe ./bin/server.dart -o ./build/server
# FROM debian:buster-slim
# COPY --from=builder /dart_server/build /bin
# COPY --from=builder /runtime/ /
# COPY --from=builder /dart_server/query-engine ./build/query-engine
# CMD [ "server" ]

FROM dart:stable as builder

# Set the working directory
WORKDIR /app

# Copy dart project files and install dependencies
COPY . .
RUN dart pub get

# Delete prisma configurator
# RUN rm -rf lib/prisma_configurator.dart

# Precache query engine
ENV PRISMA_QUERY_ENGINE_BINARY=/app/query-engine
RUN dart run orm precache --type=query

# Generate Prisma client
RUN dart run orm generate
RUN dart run build_runner build --delete-conflicting-outputs

# Build simple app execable
RUN dart compile exe bin/server.dart -o /app/server

# Build a small image
FROM scratch

# Copy dart runtime
COPY --from=builder /runtime/ /
COPY --from=builder /app/server /app/server
COPY --from=builder /app/query-engine /app/query-engine

CMD ["sleep","20","/app/server"]