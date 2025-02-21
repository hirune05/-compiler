%{
    int yylex();
    void yyerror( const char *s);
%}
%token NUMBER
%token PLUS
%token MINUS
%token MULT
%token DIV
%token LPAR
%token RPAR
%token EQ
%token IDENT
%%

S       : E
        | IDENT EQ E
        ; 

E       : E PLUS T
        | E MINUS  T
        | T
        ; 

T       : T MULT F

        | T DIV F
        | F
        ;

F       : LPAR E RPAR
        | NUMBER
        | IDENT
        ;

%%

#include "lex.yy.c"

int main(){
    yyparse();

    return 0;
}
