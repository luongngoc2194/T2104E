#include<stdio.h>

int main(){
	int n,i,x;
	
	printf("Nhap kich thuoc cua mang :\n");
	scanf("%d",&n);
	
	int arr[n];
	printf("Nhap cac phan tu mang:\n");
	for(i=0;i<n;i++) {
		scanf("%d",&arr[i]);
	}
	printf("\n--------------------------------\n");
	for(i=0;i<n;i++) {
		printf(" %d ",arr[i]);
	}
		
	for(i=0;i<n;i++) {
		if(arr[i]%2==1){
			x=arr[i];
		}
	}
	printf("\nSo le cuoi cung cua mang la :%d ",x);
}

