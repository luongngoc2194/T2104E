#include<stdio.h>

int main(){
int i, n ,x;
	printf("Nhap so phan tu cua mang :\n");
	scanf("%d",&n);
	printf("Nhap phan tu cua mang : \n");
	int arr[n];
	for(i=0;i<n;i++){
		scanf("%d",&arr[i]);
	}
	
	printf("Nhap so x :\n");
	scanf("%d",&x);
	int count=0;
	for(i=0;i<n;i++){
		printf(" %d ",arr[i]);
		printf("\n-----------------------\n");
		if(arr[i]==x){
			count+=1;
		}
	}
	if(count!=0){
		printf("\n%d Xuat hien trong mang",x);
	}else{
		printf("\n%d Khong xuat hien trong mang",x);
	}
	
}

