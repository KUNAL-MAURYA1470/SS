%{
#include<stdio.h>
int nc=0;
%}

%%
"/*"[a-zA-Z0-9\n\t ]*"*/"  {nc++;printf("single comment : %s", yytext);}
"//"[a-zA-Z0-9\t ]*"\n"   {nc++;printf("Double comment : %s", yytext);}
%%

void main()
{
	printf("Enter the input:\n");
	yylex();

	printf("The number of comment lines=%d\n",nc);
	
}

int yywrap( )
{
	return 1;
}