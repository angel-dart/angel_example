import 'dart:async';
import 'dart:io';
import 'package:angel_configuration/angel_configuration.dart';
import 'package:angel_framework/angel_framework.dart';
import 'package:colorize/colorize.dart';
import 'package:angel_example/angel_example.dart';
import 'package:angel_static/angel_static.dart';

main() {
  runZoned(startServer, onError: onError);
}

Future<Angel> createServer() async {
  var app = new Angel();
  await app.configure(loadConfigurationFile());

  var calcServer = new CalcServer(app);
  await calcServer.setUp();
  app.use('/calc', calcServer);

  app.get("*", serveStatic());
  app.get("*", "404");
  return app;
}

startServer() async {
  var app = await createServer();
  dumpRoutes(app);

  var host = (app.properties['host'] != null) ? new InternetAddress(
      app.properties['host']) : InternetAddress.LOOPBACK_IP_V4;
  var port = app.properties['port'] ?? 3000;

  await app.startServer(host, port);
  color("Example server listening on ${host.address}:$port",
      front: Styles.CYAN);
}

onError(e, [StackTrace st]) {
  stderr.writeln(e);
  stderr.writeln(st);
}