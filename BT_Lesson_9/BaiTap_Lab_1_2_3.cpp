#include<stdio.h>
#include<math.h>
bool ktSNT(int n){
	for(int i=2;i<=sqrt(n);i++){
		if(n%i==0){
			return false;
		}		
	}
	return true;
}
int timSoNguyenTo(int n){
	while(true){
		n++;
		if(ktSNT(n)){
			return n;
		}
	}
}
int soDaoNguoc(int n){
	int m=0;
	while(n/10!=0){
		m=m*10+n%10;
		n=n/10;
		if(n/10==0){
			m=m*10+n;
		}
	}
	return m;
}
int fibonaci(int n){
	if (n==0||n==1){
		return n;
	}
	if(n>=2){
		int f0=0,f1=1,f2;
		for(int i=3;i<=n;i++){
			f2=f0+f1;
			f0=f1;
			f1=f2;			
		}
		return f2;		
	}
}
int main(){
	int n;
	printf("Nhap so nguyen :\n");
	scanf("%d",&n);
	printf("So nguyen to ke tiep cua %d la :%d\n",n,timSoNguyenTo(n));
	printf("So dao nguoc cua %d la :%d\n",n,soDaoNguoc(n));
	printf("So fibonaci cua %d la :%d",n,fibonaci(n));
}

