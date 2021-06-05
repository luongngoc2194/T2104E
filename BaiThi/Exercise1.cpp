#include<stdio.h>
#include<math.h>
int main(){
	int a,b,c;
	float p,s;
	printf("Nhap kich thuoc ba canh cua tam giac:\n");
	printf("Canh a: "),
	scanf("%d",&a);
	printf("Canh b: "),
	scanf("%d",&b);
	printf("Canh c: "),
	scanf("%d",&c);
	if(a+b>c&&a+c>b&&b+c>a){
		p=(a+b+c)/2;
		s=sqrt(p*(p-a)*(p-b)*(p-c));
		printf("\nChu vi tam giac la : %.2f",2*p);
		printf("\nDien tich tam giac la : %.2f",s);
	}else{
		printf("\nError");
	}	
}

