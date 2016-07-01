// Generated from Calc.g4 by antlr4dart
part of angel_example.calc;

/// This abstract class defines a complete generic visitor for a parse tree 
/// produced by [CalcParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class CalcVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [CalcParser.ModuloExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitModuloExpr(ModuloExprContext context);

  /// Visit a parse tree produced by [CalcParser.ExponentialExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitExponentialExpr(ExponentialExprContext context);

  /// Visit a parse tree produced by [CalcParser.AdditionExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAdditionExpr(AdditionExprContext context);

  /// Visit a parse tree produced by [CalcParser.SubtractionExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSubtractionExpr(SubtractionExprContext context);

  /// Visit a parse tree produced by [CalcParser.compilationUnit].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCompilationUnit(CompilationUnitContext context);

  /// Visit a parse tree produced by [CalcParser.NumberExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNumberExpr(NumberExprContext context);

  /// Visit a parse tree produced by [CalcParser.DivisionExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDivisionExpr(DivisionExprContext context);

  /// Visit a parse tree produced by [CalcParser.NestedExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNestedExpr(NestedExprContext context);

  /// Visit a parse tree produced by [CalcParser.MultiplicationExpr].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMultiplicationExpr(MultiplicationExprContext context);
}