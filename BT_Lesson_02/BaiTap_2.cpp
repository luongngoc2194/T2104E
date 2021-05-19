//Phuong trinh bac 2.
#include<stdio.h>
#include<math.h>
int main(){
	float a,b,c;
	printf("Nhap gia tri a : ");
	scanf("%f",&a);		
	printf("Nhap gia tri b : ");
	scanf("%f",&b);	
	printf("Nhap gia tri c : ");
	scanf("%f",&c);
	
	float x;
	printf("--------------------------------\n");
	printf("Giai phuong trinh: %.3f*x^2+%.3f*x+%.3f=0 \n",a,b,c);

	if(a==0){
		if(b==0){
			if(c==0){
				printf("Phuong trinh co vo so nghiem TH1");
			}else{
				printf("Phuong trinh vo nghiem TH1");
			}
		}else{
			x=-c/b;
			printf("Phuong trinh co 1 nghiem :\n x = %.3f",x);
		}
	}else{
		float delta;
		delta= b*b-4*a*c;
		if(delta>=0){
			if(delta==0){
				x=-b/(2*a);
				printf("Phuong trinh co 1 nghiem :\n x = %.3f",x);					
			}else{
				float x1,x2;
				x1=(-b+sqrt(delta))/(2*a);
				x2=(-b-sqrt(delta))/(2*a);
				printf("Phuong trinh co 2 nghiem : \nx1 = %.3f \nx2 = %.3f",x1,x2);
			}
		}else{
			printf("Phuong trinh vo nghiem TH2");
		}
	}
}
