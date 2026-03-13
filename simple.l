%{
#include <stdio.h>
%}

%%
"int"|"float"|"char"|"double"|"if"|"else"|"while"|"for"|"return" { printf("KEYWORD : %s\n", yytext); }
[0-9]+ { printf("NUMBER : %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER : %s\n", yytext); }
"=="|"="|"+"|"-"|"*"|"/"|"<"|">"|"<="|">="|"!=" { printf("OPERATOR : %s\n", yytext); }
";"|","|"("|")"|"{"|"}" { printf("DELIMITER : %s\n", yytext); }
[ \t\n]+   ;
. { printf("UNKNOWN : %s\n", yytext); }
%%

int yywrap() { return 1; }

int main() {
    printf("Enter C code (Ctrl+D to stop):\n");
    yylex();
    return 0;
}
