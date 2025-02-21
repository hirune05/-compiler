%{
    int line=0;
    int charCount=0;
%}
%%
\n      { line++; charCount++; }
.       { charCount++; }
%%
int main(){
    while(yylex() != 0){
    }
    printf("%d lines, %d char\n", line, charCount);
    return 0;
}