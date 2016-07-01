import 'package:angel_framework/angel_framework.dart';

class ChildServer extends Angel {
  Angel parent;

  ChildServer(Angel this.parent) {
    this.properties.addAll(parent.properties);
    this.before.addAll(parent.before);
    this.after.addAll(parent.after);
  }
}