#include <Stdio.h>

int main(){
	int a;
	printf("Nhap a :");
	scanf("%d",&a);
	int r;
	r=a%2;
	if(r==0){
		printf("a la so chan");
	}else{
		printf("a la so le");
	}
}
