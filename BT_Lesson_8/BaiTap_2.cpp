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
		for(int j=0;j<i;j++){
			if(arr[j]==x){
				printf("So vua nhap da co, nhap so khac :\n");				
				break;
			}			
		}
		arr[i]=x;
		i++;															
	}
	printf("\n-------------------------------\n");
	printf("Day so vua nhap \n");
	for(i=0;i<n;i++){
		
		printf("%d  ",arr[i]);
	}
}
