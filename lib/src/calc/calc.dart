library angel_example.calc;

import 'dart:async';
import 'dart:math' as Math;
import 'dart:io';
import 'package:angel_framework/angel_framework.dart';
import 'package:angel_mustache/angel_mustache.dart';
import 'package:antlr4dart/antlr4dart.dart';
import '../child_server.dart';

part 'src/grammar/calc_base_listener.dart';

part 'src/grammar/calc_base_visitor.dart';

part 'src/grammar/calc_lexer.dart';

part 'src/grammar/calc_listener.dart';

part 'src/grammar/calc_parser.dart';

part 'src/grammar/calc_visitor.dart';

part 'src/controllers/dsl_controller.dart';

class CalcServer extends ChildServer {
  CalcServer(Angel parent) :super(parent);

  Future setUp() async {
    await configure(new DslController());
    await configure(mustache(new Directory('views/calc')));

    get("/", (req, ResponseContext res) async {
      res
        ..header("CONTENT-TYPE", "text/html")
        ..write(await viewGenerator("index"))
        ..end();
    });
  }
}