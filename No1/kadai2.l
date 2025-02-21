%{
    int line=0;
%}
%%
\n      { line++; }
.       { /* do nothing */ }
%%
int main(){
    while(yylex() != 0){
    }
    printf("%d lines\n", line);
    return 0;
}