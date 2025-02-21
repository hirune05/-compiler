%%
"+"    { return PLUS; }
"-"    { return MINUS; }
"*"    { return MULT; }
"/"    { return DIV; }
[0-9]+ { yylval = atoi(yytext); return NUM; }
"\n"   { return NL; }
[ \t]+ { /* do nothing */ }
.      { /* do nothing */ }
