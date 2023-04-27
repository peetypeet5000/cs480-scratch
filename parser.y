%{
#include "hash.h"

struct hash* hash = hash_create();

extern int yylex();
    
%}

%union {
    float num;
    char* str;
    int category;
}

%token <str> IDENTIFIER
%token <num> NUMBER
%token <category> EQUALS PLUS MINUS TIMES DEVIDE
%token <category> SEMICOLON LPAREN RPAREN

%type <num> expression

%%

%%
