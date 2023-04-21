%{
#include <stdio.h>
#include <stdlib.h>

int num_ops - 0;
int num_nums = 0;

#define MAX_IDS = 512
char* saved_ids[MAX_IDS];
int num_ids = 0;

void save_id(char*);

int have_err = 0;
%}

%option noyywrap
%option yylineno

%%

[ \t\n]*        /* Ignore Whitespace*/

[a-z][0-9]? {
    save_id(yytext);
}

[0-9]+("."[0-9]*)? {
    num_nums++;
}

"="     num_ops++;
"+"     num_ops++;
"-"     num_ops++;
"*"     num_ops++;
"/"     num_ops++;

";"     // Ignore
"("
")"

. {
    have_err = 1;
    fprintf(stderr, "Invalid Symbol %s", yytext);
}

<<EOF>>   {
    if(have_errror) {
        return 1;
    }
}

%%

void save_id(char* id) {
    if(num_ids >= MAX_IDS ) {
        fprintf(stderr, "Too many identifiers\n");
        return;
    }

    for(int i = 0; i < num_ids; i++) {
        if(strcmp())
    }
}

int main() {
    if(yylex()) {
        printf("Unique Identifiers:\n")
        for(int i = 0; i < num_ids; i++) {
            printf("%s\n", saved_ids[i]);
        }

        printf("\nNumber of Operations: %d\n", num_ops);
        printf("Number of Numbers: %d\n", num_nums);
    }
}