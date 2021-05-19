//Nhap 3 canh tam giac, tinh kich thuoc
#include<stdio.h>
#include<math.h>

int main(){
	int a,b,c,p;
	float s,d;
	
	printf("Nhap so a :");
		scanf("%d",&a);
		printf("Nhap so b :");
		scanf("%d",&b);
		printf("Nhap so c :");
		scanf("%d",&c);
		
	
	while(((a+b)<c)||((a+c)<b)||((b+c)<a)){
		printf("So da nhap khong dung, moi nhap lai\n");
		printf("Nhap so a :");
		scanf("%d",&a);
		printf("Nhap so b :");
		scanf("%d",&b);
		printf("Nhap so c :");
		scanf("%d",&c);
	}
	printf("--------------------------------\n");
	p=a+b+c;
	d=(float)p/2;
	s=sqrt(d*(d-a)*(d-b)*(d-c));
	
	printf("Tam giac co canh \na = %d\nb = %d\nc = %d\n",a,b,c);
	printf("Chu vi = %d\nDien tich = %.2f",p,s);
}

