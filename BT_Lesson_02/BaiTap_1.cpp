#include<stdio.h>
int main(){
	int a,b,c;
	printf("Nhap so nguyen a : ");
	scanf("%d",&a);
	printf("Nhap so nguyen b : ");
	scanf("%d",&b);
	printf("Nhap so nguyen c : ");
	scanf("%d",&c);
	
	int min;
	min=a;
	
	if(min>b){
		min=b;
	}
	if(min>c){
		min=c;
	}
	
	printf("So nho nhat la %d",min);
}
