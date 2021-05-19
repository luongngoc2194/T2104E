//Tính n giai th?a
#include<stdio.h>

int main(){
	int i,n;
	printf("Nhap so can tinh :");
	scanf("%d",&n);
	i=1;
	int s=1;
	while(i<=n){
		s=s*i;
		i++;
	}
	printf("Giai thua cua %d la %d",n,s);
}

