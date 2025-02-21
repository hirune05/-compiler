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
"<="   { return LE; }
"<"    { return LT; }
">="   { return GE; }
">"    { return GT; }
"=="   { return EQEQ; }
"!="   { return NEQ; }
"print" { return PRINT; }
"while" { return WHILE; }
"end"   { return END; }
[\t\n ] { /* nothing to do */ }
.       { printf ("bad input character!!\n");
        printf ("ignored! \n");}
