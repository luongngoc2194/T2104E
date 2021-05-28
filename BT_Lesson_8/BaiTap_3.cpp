#include<stdio.h>

int main(){
	int n,x,i;
	printf("Nhap kich thuoc maang : ");
	scanf("%d",&n);
	int arr[n];
	printf("\nNhap phan tu thu nhat : ");
	scanf("%d",&arr[0]);
	

	for(i=1;i<n;i++){
		printf("\nNhap phan tu thu %d : ",i);
		scanf("%d",&arr[i]);
		int x=arr[i];		
		for(int j=i-1;j>=0;j--){
			
			if(arr[j]>x){
				arr[j+1]=arr[j];
				arr[j]=x;							
			}				
		}
	}
	printf("\n----------------------------\n");
	for(i=0;i<n;i++){
		printf("%d  ",arr[i]);
	}
}
/* 7 6 2 5 4 3 8
	i=1:
		j=0:
			a0=7
			a1=6=>a1=7,a0=6
	i=2
		j=1:
			a1=7
			a2=2=>a1=2;a2=7
		j=0
			a0=6
			a2=7		
			
*/
