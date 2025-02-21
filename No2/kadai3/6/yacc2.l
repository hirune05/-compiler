%%
[0-9]+ { return NUMBER; }
[a-z]  { return IDENT; }
"+"    { return PLUS; }
"-"    { return MINUS; }
"*"    { return MULT; }
"/"    { return DIV; }
"("    { return LPAR; }
")"    { return RPAR; }
"="    { return EQ; }
"print" { return PRINT; }
"while" { return WHILE; }
"cond"  { return COND; }
"end"   { return END; }
[\t\n ] { /* nothing to do */ }
.       { printf ("bad input character!!\n");
        printf ("ignored! \n");}
