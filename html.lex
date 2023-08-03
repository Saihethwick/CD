%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n;

%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("C:\\Users\\P Sai vinitha\\h.html","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
****************************************************************************************************************
C:\Users\harsh>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\harsh>flex html.l.txt

C:\Users\harsh>set path=C:\MinGW\bin

C:\Users\harsh>gcc lex.yy.c

C:\Users\harsh>a


