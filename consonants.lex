%{
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;printf("\n %s is a vowel\n",yytext);}
[a-zA-Z] {c++;printf("\n%s is a consonant\n",yytext);}
%%
int yywrap(void){}
int main()
{
printf("\nenter : ");
yylex();
printf("\nvowels are:%d,""\nconsonants are:%d",v,c);
return 0;
}
