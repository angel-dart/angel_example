// Simple calculator grammar, nothing special.
grammar Calc;

@header {part of angel_example.calc;}

WS: (' ' | '\n' | '\r') -> skip;

CARET: '^';
MINUS: '-';
MODULO: '%';
PAREN_L: '(';
PAREN_R: ')';
PLUS: '+';
SLASH: '/';
TIMES: '*';

fragment DIGITS: [0-9]+;
fragment DOT: '.';
NUMBER: MINUS? DIGITS (DOT DIGITS)?;

expr:
    NUMBER #NumberExpr
    | expr CARET expr #ExponentialExpr
    | expr TIMES expr #MultiplicationExpr
    | expr SLASH expr #DivisionExpr
    | expr MODULO expr #ModuloExpr
    | expr PLUS expr #AdditionExpr
    | expr MINUS expr #SubtractionExpr
    | PAREN_L expr PAREN_R #NestedExpr
;