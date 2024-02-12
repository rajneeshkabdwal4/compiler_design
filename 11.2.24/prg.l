%{
#include <stdio.h>
int i=0,y=0;
%}
%%
[0-9]+ {i++;}
[0-9]+"."[0-9]+ {y++;}
" " {}
[/n] {} 
%%
int yywrap(){}
int main()
{
	yylex();
	printf("Integer:%d Float:%d\n",i,y);
}
