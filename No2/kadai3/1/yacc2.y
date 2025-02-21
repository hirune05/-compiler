%{
    int yylex();
    void yyerror( const char *s);
%}
%token NUMBER
%token PLUS
%token MINUS
%token MULT
%token DIV
%%

S       : E
        ; 

E       : E PLUS T
        | E MINUS  T
        | T
        ; 

T       : T MULT F

        | T DIV F
        | F
        ;

F       : NUMBER
        ;

%%

#include "lex.yy.c"

int main(){
    yyparse();

    return 0;
}
