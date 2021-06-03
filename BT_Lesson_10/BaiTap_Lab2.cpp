/*Nh?p vào 1 chu?i, chuy?n các ký t? thành in hoa*/
#include<stdio.h>
#include<string.h>
int main(){
	char arr[50];
	printf("Nhap chuoi ky tu: \n");
	scanf("%sc",arr);
	
	printf("-Chuoi vua nhap :\n");
	puts(arr);
	strupr(arr);
	printf("-Chuoi dc in hoa chua cai :\n");
	puts(arr);
}

