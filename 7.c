//Write a program to demonstrate the use of macro.

#include<stdio.h>
#define REC(l,b)l*b

int main()
{
    int l=2 , b=4;
    int area= REC(l,b);
    printf("area of rectangle is %d\n",area);
printf("File :%s\n", __FILE__ );    
   printf("Date :%s\n", __DATE__ );    
}