//1. Tính S = 1 + 2 + 3 + ... + 100000
#include<stdio.h>

int main(){
	int n,s;
	n=0;s=0;
	while(n<=10000){
		s+=n;
		n++;
	}
	printf("Tong S = %d",s);
	
}

