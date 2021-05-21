//Tim uoc chung lon nhat .
#include<stdio.h>

int main(){
	int a,b;
	
	printf("Nhap 2 so bat ky \n");
	printf("Nhap so thu 1 : ");
	scanf("%d",&a);
	printf("Nhap so tu 2 : ");
	scanf("%d",&b);
	
	int uoc;
	for(int i=1;i<=a&&i<=b;i++){
		if(a%i==0 && b%i==0){
			uoc=i;
		}
	}
	
	printf("\nuoc chung lon nhat cua %d va %d la : %d",a,b,uoc);
}

