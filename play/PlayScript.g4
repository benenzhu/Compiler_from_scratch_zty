
grammar PlayScript;

//options { tokenVocab=CommonLexer; }
import CommonLexer;

@header {
package play;
}


literal // 字面量
	:	IntegerLiteral
	|	FloatingPointLiteral
	|	BooleanLiteral
	|	CharacterLiteral
	|	StringLiteral
	|	NullLiteral
	;


expression // 表达式
    :   assignmentExpression // 赋值
    |   expression ',' assignmentExpression // 多个一起 a=1, b=2
    ;

assignmentExpression
    :   additiveExpression // 加法
    |   Identifier assignmentOperator additiveExpression // a=10
    ;

assignmentOperator
    :   '='
    |   '*='
    |  '/='
    |   '%='
    |   '+='
    |   '-='
    ;

additiveExpression
    :   multiplicativeExpression
    |   additiveExpression '+' multiplicativeExpression
    |   additiveExpression '-' multiplicativeExpression
    ;

multiplicativeExpression
    :   primaryExpression
    |   multiplicativeExpression '*' primaryExpression //
    |   multiplicativeExpression '/' primaryExpression
    |   multiplicativeExpression '%' primaryExpression
    ;

primaryExpression // 这个是啥意思？
    :   Identifier
    |   literal
    |   Identifier '(' argumentExpressionList? ')'
    |   '(' expression ')'
    ;


argumentExpressionList
    :   assignmentExpression
    |   argumentExpressionList ',' assignmentExpression
    ;
