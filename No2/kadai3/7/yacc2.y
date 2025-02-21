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
%token PRINT
%token WHILE
%token END
%token LE LT GE GT EQEQ NEQ
%%

Ss      : Ss S
        | S
        ;

S       : E
        | IDENT EQ E
        | PRINT E
        | WHILE COND Ss END
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

COND    : E LE E
        | E LT E
        | E GE E
        | E GT E
        | E EQEQ E
        | E NEQ E
        ;
%%

#include "lex.yy.c"

int main(){
    yyparse();

    return 0;
}
