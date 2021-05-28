#include<stdio.h>

int main(){
	int i,n,x,y;
	printf("Nhap kich thuoc mang : ");
	scanf("%d",&n);
	int arr[n];
	for(i=0;i<n;i++){
		printf("Nha phan tu thu %d :",i);
		scanf("%d",&arr[i]);
	}
	printf("Nhap so nguyen x bat ky :");
	scanf("%d",&x);
	
	int tontai=0;
	
	for(i=0;i<n;i++){
		if(arr[i]<x){
			y=arr[i];
			tontai=1;
			
			for(int j=i;j<n;j++){
				if(arr[j]>y&&arr[j]<x){
					y=arr[j];
				}
			}
			break;
		}
	}
	if(tontai==0){
		printf("Khong ton tai so nho hon %d trong day",x);
	}else{
		printf("So nho hon va gan %d nhat la %d ",x,y);
	}
	
}

