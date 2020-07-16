#include <stdio.h>


typedef struct
{
	int x;
	int y;
} Point;

Point point_new(int x, int y)
{
	Point a;
	a.x = x;
	a.y = y;
	return a;
}

//struct Point
//{
//  int x, y;
//};

Point addpoints (Point p1, Point p2){
p1.x += p2.x;
p1.y += p2.y;
return p1;
}

//this function takes pointers as parameter, not dereferenced parameter.
Point *addpointsptr (Point *p1, Point *p2){
//the function's return type is a pointer, when dereferenced, it is type Point.
p1->x += p2->x;
p1->y += p2->y;
return p1;
}

Point * point_ptr_new(int x, int y)
{
  Point *p;
  if((p = malloc(sizeof *p)) != NULL)
  {
    p->x = x;
    p->y = y;
  }
  return p;
}

int main(){

	Point a=point_new(1,2);
	Point b=point_new(2,3);
	Point *c = point_ptr_new(4,5);//c is a pointer, dereference of c is a point.
	Point *d = point_ptr_new(6,7);
	Point e = addpoints(a,b);
	Point f = addpoints(*c, *d);
	Point* g = addpointsptr(c,d);
	Point* h = addpointsptr(&a,&b);
	printf("point a.x : %d \n", a.x);
	printf("point b.x : %d \n", b.x);
	printf("ptr point c->x : %d \n", c->x);
	printf("ptr point d->x : %d \n", d->x);
        printf("point e.x : %d \n", e.x);
        printf("point f.x : %d \n", f.x);
        printf("point g->x : %d \n", g->x);
        printf("point h->x : %d \n", h->x);
        //printf("point g.x : %d \n", g.x);
}
