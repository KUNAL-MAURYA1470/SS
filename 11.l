%{
#include <stdio.h>
%}

%%
"int"   { printf("Keyword: int\n"); }
"float" { printf("Keyword: float\n"); }
[0-9]+  { printf("Constant: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
[ \t\n] { /* Ignore whitespace and newline characters */ }
.       
%%

int main() {
    yylex();
    return 0;
}
int yywrap(){ return(1); }