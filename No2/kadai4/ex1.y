%{
    #include <stdio.h>
    int yylex();
    void yyerror( const char *s);
%}
%token PLUS MINUS
%token MULT DIV
%token NUM NL
%%
S       : Ls
        ;

Ls      : Ls Line
        | Line
        ;

Line    : E NL {printf("%d\n", $1);}
        ;

E       : E PLUS T {$$ = $1 + $3;}
        | E MINUS T {$$ = $1 - $3;}
        | T
        ;

T       : T MULT F {$$ = $1 * $3;}
        | T DIV F {$$ = $1 / $3;}
        | F { $$ = $1; }
        ;

F       : NUM { $$ = $1; }
        ;

%%

#include "lex.yy.c"

int main(){
    yyparse();

    return 0;
}
