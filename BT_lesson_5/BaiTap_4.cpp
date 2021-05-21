//Tim boi chung nho nhat
#include<stdio.h>

int main(){
	int a,b;
	
	printf("Nhap 2 so bat ky \n");
	printf("Nhap so thu 1 : ");
	scanf("%d",&a);
	printf("Nhap so tu 2 : ");
	scanf("%d",&b);
	
	int boi=a*b;
	
	for(int i=1;i<=a && i<=b;i++){
		
		if(a%i==0 && b%i==0){
			boi=boi/i;
		
		}
	}
	printf("Boi chung nho nhat cua %d va %d la : %d",a,b,boi);
}

