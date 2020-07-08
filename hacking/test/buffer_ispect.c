void func(char* string) 
	{char buf[20];for (int i = 0; i < 20; i++)
	buf[i] ='A'+ i;printf(string);// our debugger
}

int main(int argc, char* argv[]) 
{
	func(argv[1]);
}
