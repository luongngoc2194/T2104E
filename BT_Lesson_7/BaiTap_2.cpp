#include<stdio.h>

int main(){
	int n,i,x,mind;
	
	printf("Nhap kich thuoc cua mang :\n");
	scanf("%d",&n);
	
	int arr[n];
	printf("Nhap cac phan tu mang:\n");
	for(i=0;i<n;i++) {
		scanf("%d",&arr[i]);
	}
	printf("\n--------------------------------\n");
	
	int count=0;
	
		
	for(i=0;i<n;i++){         //Tim so duong trong mang
		if(arr[i]>0){
			mind=arr[i];      //tim thay thi gan mind vao so dau tien tim dc    
			count++;          // count==1
			break;            //Thoat vong luon
		}
	}
	if(count==0){			
		printf("Mang ko ton tai so duong\n");
			
	}else{			
		for(i+1;i+1<n;i++){
			if(arr[i+1]>0&&mind>arr[i+1]){
				mind=arr[i+1];
			}
		}
		printf("So duong nho nhat la %d",mind);
		
	}
	

}

