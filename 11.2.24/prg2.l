%{
#include <stdio.h>
int a=0,b=0,c=0,d=0;
%}
%%
[+] {b++;}
[-] {b++;}
[/] {b++;}
[*] {b++;}
[=] {b++;}
"if" {a++;}
"else" {a++;}

[a-zA-Z][0-9]* {c++;}
%%
int yywrap(){}
int main(){
yylex();
printf("Operators:%d\n",b);
printf("Keywords:%d\n",c);
printf("IDENTIFIER:%d\n",a);

}
