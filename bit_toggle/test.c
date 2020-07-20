
int main(){
int number = 255;
printf ("number = %d \n", number);
//set off
number &= ~(1UL << 2);
printf ("number after off 2nd bit= %d \n", number);
number |= 1UL << 2;
printf ("number after set 2nd bit= %d \n", number);
number ^= 1UL << 2;
printf ("number after toggle 2nd bit= %d \n", number);
}
