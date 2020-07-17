#include <stdio.h>
#include <ctype.h>
#include <string.h>
#define MAXWORD 100
#define NKEYS 10;

int getword(char *, int);
int binsearch(char *, struct key *, int);

typedef struct {
	char *word;
	int count;
}Key;

Key keytab[] ={

"auto", 0,
"break", 0,
"case", 0,
"char", 0,
"const", 0,
"continue", 0,
"default", 0,
"unsigned", 0,
"void", 0,
"volatile", 0,
"while", 0 };

main()
{
	int n;
	char word[MAXWORD];
	while (getword(word, MAXWORD) != EOF) 
		if (isalpha(word[0]))
			if ((n = binsearch(word, keytab, NKEYS)) >= 0)
		 		keytab[n].count++;
	for (n = 0; n < NKEYS; n++) 
		if (keytab[n].count > 0)
			printf("%4d %s\n",
				keytab[n].count, keytab[n].word);
	return 0;
}
