// Generated from Calc.g4 by antlr4dart
part of angel_example.calc;

/// This class provides an empty implementation of [CalcVisitor],
/// which can be extended to create a visitor which only needs to handle 
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class CalcBaseVisitor<T> extends ParseTreeVisitor<T> implements CalcVisitor<T> {
  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitModuloExpr(ModuloExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitExponentialExpr(ExponentialExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitAdditionExpr(AdditionExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitSubtractionExpr(SubtractionExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitCompilationUnit(CompilationUnitContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitNumberExpr(NumberExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitDivisionExpr(DivisionExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitNestedExpr(NestedExprContext context) => visitChildren(context);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [context].
  T visitMultiplicationExpr(MultiplicationExprContext context) => visitChildren(context);
}