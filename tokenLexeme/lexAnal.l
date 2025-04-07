%{
#include <stdio.h>

void print_token(const char* token, const char* type) {
    printf("Token: %-15s Type: %s\n", token, type);
}

%}

%%

int|return|if|else|while|void|printf|int|switch|for|char|include {print_token(yytext, "Keyword");}

[A-Za-z]([a-z]|[0-9])* {print_token(yytext, "Identifier");}

"#include" {print_token(yytext, "Preprocessor Directive");}

"<"([a-z]|.)*">" {print_token(yytext, "Filename");}

"(" {print_token(yytext, "Parenthesis");}
")" {print_token(yytext, "Parenthesis");}
"{" {print_token(yytext, "Parenthesis");}
"}" {print_token(yytext, "Parenthesis");}

[\"].*[\"] {print_token(yytext, "String Literal");}

[0-9]+ {print_token(yytext, "Number Literal");}

.               {/* Ignore other symbols */}

[ \t\n]+        { /* Ignore whitespace */ }

"//".*          { /* Ignore single comments */ }

"/\*".*"\*/"    { /* Ignore multi comments */ }



%% 

void main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <sourceCode.c>\n", argv[0]);
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror("Error opening file");
    }


    yyin = file; 
    yylex();     
    fclose(file); 

}

int yywrap(){}