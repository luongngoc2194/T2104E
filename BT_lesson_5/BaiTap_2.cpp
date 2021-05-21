//tinh tong cac uoc .
#include<stdio.h>

int main(){
	int n;
	printf("Nhap so nguyen n : ");
	scanf("%d",&n);
	
	printf("Cac uoc cua %d la :\n",n);
	int sum=0;
	for(int i=1;i<=n;i++){
		if(n%i==0){
			
			printf("%d\n",i);
			sum+=i;
			
		}
	}
	printf("\nTong cac uoc cua %d la : %d",n,sum);
}

