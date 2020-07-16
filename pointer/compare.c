#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAXLINES 50 /* max #lines to be sorted */ 
#define ALLOCSIZE 100 /* size of available space */
static char allocbuf[ALLOCSIZE]; /* storage for alloc */
static char *allocp = allocbuf; /* next free position */
char *alloc(int);
//int getline(char *, int);
char *lineptr[MAXLINES]; /* pointers to text lines */
int readlines(char *lineptr[], int nlines); 
void writelines(char *lineptr[], int nlines);
//void qsort(void *v[], int left, int right, int (*comp)(void *, void *));
int numcmp(char *, char *);
/* sort input lines */ 
main(int argc, char *argv[])
{
	int nlines; /* number of input lines read */ 
	int numeric = 0; /* 1 if numeric sort */
	printf("main started");
	if (argc > 1 && strcmp(argv[1], "-n") == 0) 
		{numeric = 1;
	         printf("argument 1 is %x \n", argv[1]);
		}
	if ((nlines = readlines(lineptr, MAXLINES)) >= 0) 
	{	printf("running into function choosing");
		myqsort((void**) lineptr, 0, nlines-1,(int (*)(void*,void*))(numeric ? numcmp : strcmp)); 
		writelines(lineptr, nlines);
	return 0;
	} else {
		printf("input too big to sort\n"); return 1;
	}
}

extern void myqsort(void *v[], int left, int right,int (*comp)(void *, void *))
{
	int i, last;
	void swap(void *v[], int, int);
	if (left >= right) /* do nothing if array contains */ 
		return; /* fewer than two elements */
	swap(v, left, (left + right)/2); 
	last = left;
	for (i = left+1; i <= right; i++) 
		if ((*comp)(v[i], v[left]) < 0)
			swap(v, ++last, i); 
			swap(v, left, last);
			myqsort(v, left, last-1, comp); 
			myqsort(v, last+1, right, comp);
}

extern int numcmp(char *s1, char *s2)
{
	double v1, v2;
	v1 = atof(s1); v2 = atof(s2); 
	if (v1 < v2)
		return -1; 
	else if (v1 > v2)
		return 1;
	else
		return 0;
}

extern void swap (void *v[], int i, int j)
{
	void *temp;
	temp = v[i]; 
	v[i] = v[j]; 
	v[j] = temp;
}

extern void writelines(char *lineptr[], int nlines)
{
	while (nlines-- > 0) printf("%s\n", *lineptr++);
}

extern int readlines(char *lineptr[], int maxlines)
{
	int len, nlines;
	char *p, line[10];
	nlines = 0;
	while ((len = mygetline(line, 10)) > 0)
		printf("inside readlines");
		if (nlines >= maxlines || (p = (char)alloc(len)) == NULL) 
			return -1;
		else {
		line[len-1] = '\0'; /* delete newline */ 
		strcpy(p, line);
		lineptr[nlines++] = p;
		}
	return nlines;
}

extern int mygetline(char s[],int lim)
{
	int c, i;
	for (i=0; i < lim-1 && (c=getchar())!=EOF && c!='\n'; ++i) 
		s[i] = c;
	if (c == '\n') 
		{ s[i] = c;
		++i;
	}
	s[i] = '\0'; return i;
}

char *alloc(int n)
{
	if (allocbuf + ALLOCSIZE - allocp >= n) { /* it fits */ 
		allocp += n;
		return allocp - n; /* old p */
	} else /* not enough room */ 
	return 0;
}
