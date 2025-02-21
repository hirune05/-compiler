%{ 
%}
%%
"auto"              { printf("reserved word!\n"); }
"break"             { printf("reserved word!\n"); }
"case"              { printf("reserved word!\n"); }
"char"              { printf("reserved word!\n"); }
"const"             { printf("reserved word!\n"); }
"continue"          { printf("reserved word!\n"); }
"default"           { printf("reserved word!\n"); }
"do"                { printf("reserved word!\n"); }
"double"            { printf("reserved word!\n"); }
"else"              { printf("reserved word!\n"); }
"enum"              { printf("reserved word!\n"); }
"extern"            { printf("reserved word!\n"); }
"float"             { printf("reserved word!\n"); }
"for"               { printf("reserved word!\n"); }
"goto"              { printf("reserved word!\n"); }
"if"                { printf("reserved word!\n"); }
"int"               { printf("reserved word!\n"); }
"long"              { printf("reserved word!\n"); }
"register"          { printf("reserved word!\n"); }
"return"            { printf("reserved word!\n"); }
"short"             { printf("reserved word!\n"); }
"signed"            { printf("reserved word!\n"); }
"sizeof"            { printf("reserved word!\n"); }
"static"            { printf("reserved word!\n"); }
"struct"            { printf("reserved word!\n"); }
"switch"            { printf("reserved word!\n"); }
"typedef"           { printf("reserved word!\n"); }
"union"             { printf("reserved word!\n"); }
"unsigned"          { printf("reserved word!\n"); }
"void"              { printf("reserved word!\n"); }
"volatile"          { printf("reserved word!\n"); }
"while"             { printf("reserved word!\n"); }

[0-9]+              { printf ("Number!!\n");}
[0-9]+\.[0-9]+      { printf ("Number!!\n");}
.                   { /* do nothing */ }
\n                  { /* do nothing */ }

%%
int main(){
    while(yylex() != 0){
    }
    return 0;
}