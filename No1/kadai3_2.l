%{
    int line=0;
    int charCount=0;
    int word=0;
%}
%%
[^ \n\t]+      { charCount+=strlen(yytext); word++;}
\n             { charCount++; line++; }
[\t]           { charCount++; }
%%
int main(){
    while(yylex() != 0){
    }
    printf("%d lines, %d char, %d word \n", line, charCount, word);
    return 0;
}