import 'package:angel_framework/angel_framework.dart';
import 'package:colorize/colorize.dart';

dumpRoutes(Routable routable) {
  color("Dumping routes: \n", front: Styles.MAGENTA);
  for (Route route in routable.routes) {
    color("    ${route.method} ${route.path} - ${route.handlers}", front: Styles.YELLOW);
  }
  print("");
}