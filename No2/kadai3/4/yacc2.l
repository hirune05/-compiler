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
[\t\n ] { /* nothing to do */ }
.       { printf ("bad input character!!\n");
        printf ("ignored! \n");}
