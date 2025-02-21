%%
[0-9]+ { return NUMBER; }
"+"    { return PLUS; }
"-"    { return MINUS; }
"*"    { return MULT; }
"/"    { return DIV; }
"("    { return LPAR; }
")"    { return RPAR; }
[\t\n ] { /* nothing to do */ }
.       { printf ("bad input character!!\n");
        printf ("ignored! \n");}
        