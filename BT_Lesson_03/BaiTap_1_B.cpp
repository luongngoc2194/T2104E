//Nhap so nguyen duong n co 4 chu so, viet so nghich dao cua n.
#include<stdio.h>

int main(){
	
	int n,a,b,c,d,m;
	printf("Nhap so nguyen duong co 4 chu so :");
	scanf("%d",&n);
	
	if(n < 0 || n > 9999){
		printf("So da nhap khong hop le\n");
	}else{
		a = n/1000;
		b = (n - a/1000)/100;
		c = (n - a*1000 - b*100)/10;
		d = (n - a*1000 - b*100 - c*10);
		
		if(a!=0){
			m = d*1000 + c*100 + b*10 + a;
		}else{
			if(b!=0){
				m = d*100 + c*10 + b;
			}else{
				if(c!=0){
					m=d*10+c;
				}else{
					m=n;
				}
			}
		}				
		printf("So nghich cua %d la %d\n",n,m);
	}
	
}

