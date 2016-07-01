part of angel_example.calc;

@Expose('/dsl')
class DslController extends Controller {
  @Expose('/calculate', method: "POST", middleware: const [requireExpression])
  calculate(RequestContext req) async {
    var lexer = new CalcLexer(new StringSource(req.body['expression']));
    var parser = new CalcParser(new CommonTokenSource(lexer))
      ..buildParseTree = true;

    var visitor = new DslVisitor();
    return visitor.visitCompilationUnit(parser.compilationUnit());
  }
}

Future<bool> requireExpression(RequestContext req, res) async {
  if (req.body['expression'] == null)
    throw new AngelHttpException.BadRequest();

  return true;
}

class DslVisitor extends CalcBaseVisitor<num> {
  num visitExpr(ExprContext expr) {
    if (expr is NumberExprContext)
      return visitNumberExpr(expr);
    else if (expr is NestedExprContext)
      return visitNestedExpr(expr);
    else if (expr is ExponentialExprContext)
      return visitExponentialExpr(expr);
    else if (expr is MultiplicationExprContext)
      return visitMultiplicationExpr(expr);
    else if (expr is DivisionExprContext)
      return visitDivisionExpr(expr);
    else if (expr is ModuloExprContext)
      return visitModuloExpr(expr);
    else if (expr is AdditionExprContext)
      return visitAdditionExpr(expr);
    else if (expr is SubtractionExprContext)
      return visitSubtractionExpr(expr);

    else throw new AngelHttpException.BadRequest();
  }

  @override
  num visitNumberExpr(NumberExprContext context) => num.parse(context.text);

  @override
  num visitNestedExpr(NestedExprContext context) =>
      visitExpr(context.getExpr());

  @override
  num visitExponentialExpr(ExponentialExprContext context) =>
      Math.pow(visitExpr(context.getExpr(0)), visitExpr(context.getExpr(1)));

  @override
  num visitMultiplicationExpr(MultiplicationExprContext context) =>
      visitExpr(context.getExpr(0)) * visitExpr(context.getExpr(1));

  @override
  num visitDivisionExpr(DivisionExprContext context) =>
      visitExpr(context.getExpr(0)) / visitExpr(context.getExpr(1));

  @override
  num visitModuloExpr(ModuloExprContext context) =>
      visitExpr(context.getExpr(0)) % visitExpr(context.getExpr(1));

  @override
  num visitAdditionExpr(AdditionExprContext context) =>
      visitExpr(context.getExpr(0)) + visitExpr(context.getExpr(1));

  @override
  num visitSubtractionExpr(SubtractionExprContext context) =>
      visitExpr(context.getExpr(0)) - visitExpr(context.getExpr(1));

  @override
  num visitCompilationUnit(CompilationUnitContext context) =>
      visitExpr(context.getExpr());
}