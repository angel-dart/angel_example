// Generated from Calc.g4 by antlr4dart
part of angel_example.calc;

class CalcParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_EXPR = 0, RULE_COMPILATIONUNIT = 1;

  static const int WS = 1, CARET = 2, MINUS = 3, MODULO = 4, PAREN_L = 5, 
                   PAREN_R = 6, PLUS = 7, SLASH = 8, TIMES = 9, NUMBER = 10;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0c\x28\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x05\x02\x0d\x0a\x02\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03"
  	"\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02"
  	"\x07\x02\x21\x0a\x02\x0c\x02\x0e\x02\x24\x0b\x02\x03\x03\x03\x03\x03"
  	"\x03\x02\x03\x02\x04\x02\x04\x02\x02\x2c\x02\x0c\x03\x02\x02\x02\x04"
  	"\x25\x03\x02\x02\x02\x06\x07\x08\x02\x01\x02\x07\x0d\x07\x0c\x02\x02"
  	"\x08\x09\x07\x07\x02\x02\x09\x0a\x05\x02\x02\x02\x0a\x0b\x07\x08\x02"
  	"\x02\x0b\x0d\x03\x02\x02\x02\x0c\x06\x03\x02\x02\x02\x0c\x08\x03\x02"
  	"\x02\x02\x0d\x22\x03\x02\x02\x02\x0e\x0f\x0c\x09\x02\x02\x0f\x10\x07"
  	"\x04\x02\x02\x10\x21\x05\x02\x02\x0a\x11\x12\x0c\x08\x02\x02\x12\x13"
  	"\x07\x0b\x02\x02\x13\x21\x05\x02\x02\x09\x14\x15\x0c\x07\x02\x02\x15"
  	"\x16\x07\x0a\x02\x02\x16\x21\x05\x02\x02\x08\x17\x18\x0c\x06\x02\x02"
  	"\x18\x19\x07\x06\x02\x02\x19\x21\x05\x02\x02\x07\x1a\x1b\x0c\x05\x02"
  	"\x02\x1b\x1c\x07\x09\x02\x02\x1c\x21\x05\x02\x02\x06\x1d\x1e\x0c\x04"
  	"\x02\x02\x1e\x1f\x07\x05\x02\x02\x1f\x21\x05\x02\x02\x05\x20\x0e\x03"
  	"\x02\x02\x02\x20\x11\x03\x02\x02\x02\x20\x14\x03\x02\x02\x02\x20\x17"
  	"\x03\x02\x02\x02\x20\x1a\x03\x02\x02\x02\x20\x1d\x03\x02\x02\x02\x21"
  	"\x24\x03\x02\x02\x02\x22\x20\x03\x02\x02\x02\x22\x23\x03\x02\x02\x02"
  	"\x23\x03\x03\x02\x02\x02\x24\x22\x03\x02\x02\x02\x25\x26\x05\x02\x02"
  	"\x02\x26\x05\x03\x02\x02\x02\x05\x0c\x20\x22";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "WS", "'^'", "'-'", "'%'", "'('", "')'", "'+'", "'/'", 
    "'*'", "NUMBER"
  ];

  final List<String> ruleNames = [
    "expr", "compilationUnit"
  ];
  CalcParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Calc.g4";
  ExprContext expr([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new ExprContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 0;
    enterRecursionRule(localContext, 0, RULE_EXPR, _p);
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 10;
      switch (inputSource.lookAhead(1)) {
        case NUMBER: 
          localContext = new NumberExprContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 5; 
          match(NUMBER); 
          break;
        case PAREN_L: 
          localContext = new NestedExprContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 6; 
          match(PAREN_L);
          state = 7; 
          expr(0);
          state = 8; 
          match(PAREN_R); 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 32;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 2, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 30;
          switch (interpreter.adaptivePredict(inputSource, 1, context)) {
            case 1:
              localContext = new ExponentialExprContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 12;
              if (!(precedencePredicate(context, 7))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 7)");
              state = 13; 
              match(CARET);
              state = 14; 
              expr(8);
              break;
            case 2:
              localContext = new MultiplicationExprContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 15;
              if (!(precedencePredicate(context, 6))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 6)");
              state = 16; 
              match(TIMES);
              state = 17; 
              expr(7);
              break;
            case 3:
              localContext = new DivisionExprContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 18;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 19; 
              match(SLASH);
              state = 20; 
              expr(6);
              break;
            case 4:
              localContext = new ModuloExprContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 21;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 22; 
              match(MODULO);
              state = 23; 
              expr(5);
              break;
            case 5:
              localContext = new AdditionExprContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 24;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 25; 
              match(PLUS);
              state = 26; 
              expr(4);
              break;
            case 6:
              localContext = new SubtractionExprContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 27;
              if (!(precedencePredicate(context, 2))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
              state = 28; 
              match(MINUS);
              state = 29; 
              expr(3);
              break;
          } 
        }
        state = 34;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 2, context);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
  	errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return localContext;
  }
  CompilationUnitContext compilationUnit() {
    var localContext = new CompilationUnitContext(context, state);
    enterRule(localContext, 2, RULE_COMPILATIONUNIT);
    try {
      enterOuterAlt(localContext, 1);
      state = 35; 
      expr(0);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 0: return _exprSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _exprSemanticPredicate(ExprContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 7);
      case 1: return precedencePredicate(context, 6);
      case 2: return precedencePredicate(context, 5);
      case 3: return precedencePredicate(context, 4);
      case 4: return precedencePredicate(context, 3);
      case 5: return precedencePredicate(context, 2);
    }
    return true;
  }
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_EXPR;
 
  ExprContext.from(ExprContext context) : super.from(context) {
  }
}

class CompilationUnitContext extends ParserRuleContext {

  CompilationUnitContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_COMPILATIONUNIT;

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterCompilationUnit(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitCompilationUnit(this);
  }

  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitCompilationUnit(this);
    else return visitor.visitChildren(this);
  }
}

class ModuloExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  TerminalNode getMODULO() => getToken(CalcParser.MODULO, 0);
  ModuloExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterModuloExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitModuloExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitModuloExpr(this);
    else return visitor.visitChildren(this);
  }
}

class ExponentialExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  TerminalNode getCARET() => getToken(CalcParser.CARET, 0);
  ExponentialExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterExponentialExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitExponentialExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitExponentialExpr(this);
    else return visitor.visitChildren(this);
  }
}

class AdditionExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  TerminalNode getPLUS() => getToken(CalcParser.PLUS, 0);
  AdditionExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterAdditionExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitAdditionExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitAdditionExpr(this);
    else return visitor.visitChildren(this);
  }
}

class SubtractionExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  TerminalNode getMINUS() => getToken(CalcParser.MINUS, 0);
  SubtractionExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterSubtractionExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitSubtractionExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitSubtractionExpr(this);
    else return visitor.visitChildren(this);
  }
}

class NumberExprContext extends ExprContext {
  TerminalNode getNUMBER() => getToken(CalcParser.NUMBER, 0);
  NumberExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterNumberExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitNumberExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitNumberExpr(this);
    else return visitor.visitChildren(this);
  }
}

class DivisionExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  TerminalNode getSLASH() => getToken(CalcParser.SLASH, 0);
  DivisionExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterDivisionExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitDivisionExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitDivisionExpr(this);
    else return visitor.visitChildren(this);
  }
}

class NestedExprContext extends ExprContext {
  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
  TerminalNode getPAREN_L() => getToken(CalcParser.PAREN_L, 0);
  TerminalNode getPAREN_R() => getToken(CalcParser.PAREN_R, 0);
  NestedExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterNestedExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitNestedExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitNestedExpr(this);
    else return visitor.visitChildren(this);
  }
}

class MultiplicationExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  TerminalNode getTIMES() => getToken(CalcParser.TIMES, 0);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  MultiplicationExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.enterMultiplicationExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is CalcListener) 
      listener.exitMultiplicationExpr(this);
  }
  dynamic accept(ParseTreeVisitor visitor) {
    if (visitor is CalcVisitor) return visitor.visitMultiplicationExpr(this);
    else return visitor.visitChildren(this);
  }
}