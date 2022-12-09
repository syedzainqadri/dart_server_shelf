import 'package:mysql_client/mysql_client.dart';

class MysqlConnectionController {
  final _host = 'localhost';
  final _port = 3306;
  final _dbName = 'dart';
  final _dbUser = 'dart';
  final _dbPassword = 'Dart_123';

  var conn;

  sqlConnection() async {
    conn = await MySQLConnection.createConnection(
      host: _host,
      port: _port,
      userName: _dbUser,
      password: _dbPassword,
      databaseName: _dbName,
    );
    conn.connect();
  }

  query(var sql) {
    final results = conn.execute(sql);
    conn.close();
    return results;
  }
}
