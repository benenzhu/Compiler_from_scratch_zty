/**
这是一个简单的词法规则文件，把前几讲课程里用到的词法用Antlr重新实现一遍。
使用方法：
antlr Hello.g4   //生成Hello.java
javac Hello.java
grun Hello tokens -tokens hello.play
这样会把hello.play中的Token都解析打印出来。
*/

lexer grammar Hello;  //lexer关键字意味着这是一个词法规则文件，要与文件名相同。

@header {
package play;
}

//关键字
If :               'if' | '如果';   //可以在程序里用‘如果’来代替'if'
Int :              'int';

//常量
IntLiteral:        [0-9]+;
StringLiteral:      '"' .*? '"' ;  //字符串常量

//操作符
AssignmentOP:       '=' ;
RelationalOP:       '=='|'>'|'>='|'<' |'<=' ;
Star:               '*';
Plus:               '+';
Sharp:              '#';
SemiColon:          ';';
Dot:                '.';
Comm:               ',';
LeftBracket :       '[';
RightBracket:       ']';
LeftBrace:          '{';
RightBrace:         '}';
LeftParen:          '(';
RightParen:         ')';

//标识符
Id :                [a-zA-Z_] ([a-zA-Z_] | [0-9])*;

//空白字符，抛弃
Whitespace:         [ \t]+ -> skip;
Newline:            ( '\r' '\n'?|'\n')-> skip;