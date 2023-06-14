/*Lex Program to count numbers of lines, words, spaces and characters 

in a given statement*/
%{
#include<stdio.h>
int sc=0,wc=0,lc=0,cc=0;
%}

%%
[\n] { lc++; cc+=yyleng;}
[  \t] { sc++; cc+=yyleng;}
[^\t\n ]+ { wc++;  cc+=yyleng;}
%%

int main()
{
	printf("Enter the input:\n");
	yylex();
	printf("The number of lines=%d\n",lc);
	printf("The number of spaces=%d\n",sc);
	printf("The number of words=%d\n",wc);
	printf("The number of characters are=%d\n",cc);
    return 0;
}


int yywrap( )
{
	return 1;
}