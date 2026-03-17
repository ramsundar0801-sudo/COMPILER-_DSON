%{
#include <stdio.h>
%}

%%

"->"                { printf("ARROW        : %s\n", yytext); }
"|"                 { printf("ALTERNATION  : %s\n", yytext); }

[A-Z][A-Z0-9]*      { printf("NON-TERMINAL : %s\n", yytext); }
[a-z][a-z0-9]*      { printf("TERMINAL     : %s\n", yytext); }

[+\-*/()]           { printf("OPERATOR     : %s\n", yytext); }

[ \t\n]+            ;

.                   { printf("UNKNOWN      : %s\n", yytext); }

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter Grammar Rules:\n");
    yylex();
    return 0;
}