#include<stdio.h>
int main(){
	int a,b,c;
	printf("Nhap so nguyen a : ");
	scanf("%d",&a);
	printf("Nhap so nguyen b : ");
	scanf("%d",&b);
	printf("Nhap so nguyen c : ");
	scanf("%d",&c);
	
	int max;
	max=a;
	if(max<b){
		max=b;
	}
	if(max<c){
		max=c;
	}
	
	printf("Gia tri max la : %d",max);
	
	
}
