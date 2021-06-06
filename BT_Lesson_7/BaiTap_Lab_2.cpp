#include<stdio.h>

int main(){
	int i, n;
	printf("Nhap so phan tu cua mang :\n");
	scanf("%d",&n);
	printf("Nhap phan tu cua mang : \n");
	int arr[n];
	for(i=0;i<n;i++){
		scanf("%d",&arr[i]);
	}
	
	int count=0;
	int j=0;
	for(i=0;i<n;i++){
		printf(" %d ",arr[i]);
		if(arr[i]%2==1&&i%2==0){
			count+=arr[i];
			j++;
		}
	}
	printf("\nTbc cac so le o vi tri chan trong mang : %f",(float)count/j);
}

