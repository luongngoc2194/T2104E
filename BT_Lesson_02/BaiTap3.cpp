//Tinh kich thuoc tam giac.
#include<stdio.h>
#include<math.h>
int main(){
	float a,b,c;
	printf("Nhap vao do dai 3 canh :\n");
	printf("Nhap do dai canh thu nhat :");
	scanf("%f",&a);
	printf("Nhap do dai canh thu 2 :");
	scanf("%f",&b);
	printf("Nhap do dai canh thu 3 :");
	scanf("%f",&c);
	printf("-----------------------------\n");
	
	printf("Do dai cac canh : a=%.3f ,b=%.3f ,c=%.3f\n",a,b,c);
	if((a+b)>c&&(a+c)>b&&(b+c)>a){
		printf("Tinh kich thuoc tam giac\n");
		float chuVi,dienTich,p;
		chuVi=a+b+c;
		p=chuVi/2;
		dienTich=sqrt(p*(p-a)*(p-b)*(p-c));
		printf("Chu vi :%.3f \nDien tich :%.3f",chuVi,dienTich);
	}else{
		printf("Ba so da nhap ko phai do dai canh cua 1 tam giac");
	}
}
