%{
    int yylex();
    void yyerror( const char *s);
%}
%token NUMBER
%token PLUS
%%

S       : E
        ; 

E       : E PLUS NUMBER
        | NUMBER
        ; 
%%

#include "lex.yy.c"

int main(){
    yyparse();

    return 0;
}
