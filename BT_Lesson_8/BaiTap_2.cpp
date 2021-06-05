#include<stdio.h>

int main(){
	int i,n,x,y;
	printf("Nhap kich thuoc mang : ");
	scanf("%d",&n);
	int arr[n];
	printf("Nha phan tu thu nhat : ");
	scanf("%d",&arr[0]);
	i=1;
	
	while(i<n){
		printf("Nha phan tu thu %d : ",i);
		scanf("%d",&x);
		int nhapLai=0;
		for(int j=0;j<i;j++){//duyet mang tu 0 den i-1 de kiem tra tim x trong mang
			if(arr[j]==x){
				printf("So vua nhap da co, nhap so khac :\n");
				nhapLai=1;
				break;
			}			
		}
		if(nhapLai==0){
				arr[i]=x;
				i++;															
		}
	}
	printf("\n-------------------------------\n");
	printf("Day so vua nhap \n");
	for(i=0;i<n;i++){
		
		printf("%d  ",arr[i]);
	}
}
