#include <stdarg.h>
#include <stdio.h>

void minprintf(char *fmt, ...)
{
	va_list ap;
	char *p, *sval;
	int ival;
	double dval;

	va_start(ap, fmt);
	for(p = fmt; *p; p++){
		if (*p != '%')
		{ putchar (*p);
		  continue;
		}	
		switch (*++p)
		{
			case 'd':
				ival = va_arg(ap, int);
				printf("%d", ival);
				break;
			case 'f':
				dval = va_arg(ap, double);
				printf("%f",dval);
				break;
			case 's':
				for (sval = va_arg(ap, char *); *sval; sval++)
					putchar(*sval);
				break;
			default:
				putchar(*p);
				break;
		}
}
va_end(ap);
}

int main()
{
//minprintf(1,"hi",3.5);
int i = 25;
int j = 21;
char str[] = "This is a test";
minprintf("%d, %d, %s\n", i, j, str);
}
