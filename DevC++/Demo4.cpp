#include<stdio.h>
int main(){
	int a,b;
	printf("Nhap 2 so can so sanh");
	scanf("%d",&a);
	scanf("%d",&b);
	
	if(a>b){
		printf("so a = %d lon hon b = %d",a,b);
	}else{
		printf("so a = %d nho hon b = %d",a,b);
	}
}
