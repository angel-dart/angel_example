// Generated from Calc.g4 by antlr4dart
part of angel_example.calc;

/// This abstract class defines a complete listener for a parse tree produced by
/// [CalcParser].
abstract class CalcListener extends ParseTreeListener {
  /// Enter a parse tree produced by [CalcParser.ModuloExpr].
  /// [context] is the parse tree.
   void enterModuloExpr(ModuloExprContext context);

  /// Exit a parse tree produced by [CalcParser.ModuloExpr].
  /// [context] is the parse tree.
  void exitModuloExpr(ModuloExprContext context);

  /// Enter a parse tree produced by [CalcParser.ExponentialExpr].
  /// [context] is the parse tree.
   void enterExponentialExpr(ExponentialExprContext context);

  /// Exit a parse tree produced by [CalcParser.ExponentialExpr].
  /// [context] is the parse tree.
  void exitExponentialExpr(ExponentialExprContext context);

  /// Enter a parse tree produced by [CalcParser.AdditionExpr].
  /// [context] is the parse tree.
   void enterAdditionExpr(AdditionExprContext context);

  /// Exit a parse tree produced by [CalcParser.AdditionExpr].
  /// [context] is the parse tree.
  void exitAdditionExpr(AdditionExprContext context);

  /// Enter a parse tree produced by [CalcParser.SubtractionExpr].
  /// [context] is the parse tree.
   void enterSubtractionExpr(SubtractionExprContext context);

  /// Exit a parse tree produced by [CalcParser.SubtractionExpr].
  /// [context] is the parse tree.
  void exitSubtractionExpr(SubtractionExprContext context);

  /// Enter a parse tree produced by [CalcParser.compilationUnit].
  /// [context] is the parse tree.
   void enterCompilationUnit(CompilationUnitContext context);

  /// Exit a parse tree produced by [CalcParser.compilationUnit].
  /// [context] is the parse tree.
  void exitCompilationUnit(CompilationUnitContext context);

  /// Enter a parse tree produced by [CalcParser.NumberExpr].
  /// [context] is the parse tree.
   void enterNumberExpr(NumberExprContext context);

  /// Exit a parse tree produced by [CalcParser.NumberExpr].
  /// [context] is the parse tree.
  void exitNumberExpr(NumberExprContext context);

  /// Enter a parse tree produced by [CalcParser.DivisionExpr].
  /// [context] is the parse tree.
   void enterDivisionExpr(DivisionExprContext context);

  /// Exit a parse tree produced by [CalcParser.DivisionExpr].
  /// [context] is the parse tree.
  void exitDivisionExpr(DivisionExprContext context);

  /// Enter a parse tree produced by [CalcParser.NestedExpr].
  /// [context] is the parse tree.
   void enterNestedExpr(NestedExprContext context);

  /// Exit a parse tree produced by [CalcParser.NestedExpr].
  /// [context] is the parse tree.
  void exitNestedExpr(NestedExprContext context);

  /// Enter a parse tree produced by [CalcParser.MultiplicationExpr].
  /// [context] is the parse tree.
   void enterMultiplicationExpr(MultiplicationExprContext context);

  /// Exit a parse tree produced by [CalcParser.MultiplicationExpr].
  /// [context] is the parse tree.
  void exitMultiplicationExpr(MultiplicationExprContext context);
}