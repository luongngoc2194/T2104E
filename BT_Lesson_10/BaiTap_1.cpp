/*S? d?ng con tr? d? vi?t chuong trình sau:
 Nh?p 1 m?ng n s? nguyên, tìm s? l?n nh?t và s?p x?p m?ng dó. Sau dó nh?p thêm m s? nguyên và tìm s? l?n nh?t dông th?i s?p x?p l?i ( t? bé d?n l?n)
 */
#include<stdio.h>
#include<stdlib.h>
void nhap(int *arr,int n){
	for(int i=0; i<n; i++){
		printf("\nNhap so nguyen thu %d: ",i+1);
		scanf("%d",arr+i);
	}
}
void nhap(int *arr,int n,int m){
	for(int i=0; i<m-n; i++){
		printf("\nNhap so nguyen thu %d: ",n+i+1);
		scanf("%d",arr+n+i);
	}
}
void xuat(int *arr,int n){
	for(int i=0;i<n;i++){
		printf("%d  ",*(arr+i));
	}
}
void sapXep(int *arr,int n){
	for(int i=0;i<n;i++){
		for(int j=0;j<n-i-1;j++){
			if(*(arr+j)>*(arr+j+1)){
				int tmp;
				tmp =*(arr+j);
				*(arr+j)=*(arr+j+1);
				*(arr+j+1)=tmp;
			}
		}
	}
}
int main(){
	int n;
	printf("Nhap so o nho ban dau : ");
	scanf("%d",&n);
	
	int *arr;
	arr=(int*)calloc(n,sizeof(int));
	
	nhap(arr,n);
	
	sapXep(arr,n);
	
	printf("So lon nhat trong mang la %d\n",*(arr+n-1));
	printf("Mang dc sap xep theo thu tu :\n");
	xuat(arr,n);
	
	int m,t;
	
	
	do{
		printf("\nNhap so o nho can tang : ");
		scanf("%d",&m);
		if(m<n){
			printf("So khong dung, moi nhap lai");
		}
	}while(m<n);
	
	arr=(int*)realloc(arr,m*sizeof(int));
	
	t=m-n;
	printf("\nNhap them phan tu: \n");
	nhap(arr,n,m);
	
	sapXep(arr,m);
	
	printf("So lon nhat trong mang sau khi tang them la %d\n",*(arr+m-1));
	printf("Mang dc sap xep theo thu tu :\n");
	xuat(arr,m);
}

