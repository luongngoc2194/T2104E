/*Nh?p vào m?ng n chu?i, s?p x?p m?ng theo th? t? alphabe*/
#include<stdio.h>
#include<string.h>



int main(){
	int n,m;
	printf("Nhap so chuoi trong mang :\n");
	scanf("%d",&n);
	printf("Nhap kich thuoc moi chuoi trong mang :\n");
	scanf("%d",&m);
	char str[n][m];
	
	for(int i=0;i<n;i++){
		printf("Nhap chuoi thu %d :",i);
		scanf("%sc",str[i]);
	}
	
	for(int j=0;j<n-1;j++){
		for(int i=0;i<n-j-1;i++)
		if(strcmp(str[i],str[i+1])>0){
			char cmp[50];
			strcpy(cmp,str[i]);
			strcpy(str[i],str[i+1]);
			strcpy(str[i+1],cmp);
		}
	}
	for(int i=0;i<n;i++){
		puts(str[i]);
	}
		
	
}

