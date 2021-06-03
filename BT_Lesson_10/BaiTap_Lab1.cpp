/*1. Nh?p vào 1 chu?i, d?m xem trong chu?i có các nguyên âm ( a,e,u,o,i..) có s? lu?ng bao nhiêu, và ký t? khác s? lu?ng bao nhiêu.*/
#include<stdio.h>
#include<string.h>

void nhapchuoi(char arr[]){	
	printf("Nhap chuoi ky tu: \n");
	scanf("%s",arr);
}
void xuatchuoi(char arr[]){
	printf("\n%s\n",arr);
}

int main(){

	char s[50];
	nhapchuoi(s);
	int a, e, i, o, u, k;
	a=e=i=o=u=k=0;
	for(int i=0;i<strlen(s);i++){
		switch(s[i]){
			case 'a':a++;break;
			case 'e':e++;break;
			case 'i':i++;break;
			case 'o':o++;break;
			case 'u':u++;break;
			default :k++;break;
		}
	}
	printf("Chuoi da dc nhap :\n");
	xuatchuoi(s);
	printf("So luong ki tu 'a' trong chuoi : %d\n",a);
	printf("So luong ki tu 'e' trong chuoi : %d\n",e);
	printf("So luong ki tu 'u' trong chuoi : %d\n",u);
	printf("So luong ki tu 'i' trong chuoi : %d\n",i);
	printf("So luong ki tu 'o' trong chuoi : %d\n",o);
	printf("So luong ki tu khac trong chuoi : %d\n",k);
	
}

