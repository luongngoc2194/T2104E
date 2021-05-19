//Tinh S = 1+ 1/2+ 1/3 + 1/4+ ....+ 1/1000
#include<stdio.h>
#include<math.h>

int main(){
	
	float s,n;
	n=1;
	s=0;
	while(n<=1000){
		s=s+1/n;
		n++;
	}
	printf("Tong S = %f",s);
}

