#include<stdio.h>
#include<string.h>
void upperCase(char s[]){
	for(int i=0;i<strlen(s);i++){
		if(s[i]>='a'&&s[i]<='z'){
			s[i]=s[i]-32;
		}
	}
	printf("%s",s);
}
int main(){
	char str[50];
	printf("Nhap chuoi ky tu :");
	gets(str);
	printf("\nKet qua chuan hoa chuoi : \n");
	upperCase(str);
}

