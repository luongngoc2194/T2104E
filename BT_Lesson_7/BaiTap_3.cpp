#include<stdio.h>

int main(){
	int n,i,x,count,hight;
	
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
	
	hight=0;
	count=0;
	for(i=0;i<n;i++) {
		if(arr[i]>0){
			count++;
		}else{
			count=0;
		}
		
		if(hight<count){
			hight=count;
		}
	}
	printf("\nSo la so duong xuat hien lien tiep nhieu nhat %d",hight);
}

