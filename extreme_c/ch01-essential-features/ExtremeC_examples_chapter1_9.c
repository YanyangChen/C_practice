// File name: ExtremeC_exampels_chapter1_9.c
// Description: Example 1.9

int main(int argc, char** argv) {
  int var = 100;
  int* ptr = 0; //assigning a null pointer
  ptr = &var;
  printf("%x \n",ptr);
  *ptr = 200;
  printf("%x \n",ptr);
  return 0;
}
