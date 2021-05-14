#include <stdio.h>
int main(){
	int a;
	printf("Nhap vao so nguyen a :");
	scanf("%d",&a);
	if(a>0){
		printf("a = %d la so duong",a);
	}else if(a==0){
		printf("n la so 0");
	}else{
		printf("a = %d la so am",a);
	}
}
