%{
   #include<stdio.h>
   #include<string.h>
   int vcount=0,ccount=0;

%}

%%
[aeiouAEIOU]+ {vcount++;}
[a-z A-Z(^aeiouAEIOU)] {ccount++;}
%%

int yywrap(void){}
int main()
{
    printf("Enter String:");yylex();
    printf("Number of vowels are: %d\n",vcount);
    printf("Number of consonants are: %d\n",ccount);
    return 0;
}