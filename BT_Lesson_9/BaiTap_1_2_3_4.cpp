#include<stdio.h>

void timKiem(int arr[], int n, int x){
	
	int tontai=0;
	for(int i=0; i<n; i++){
		if(arr[i]==x){
			tontai=1;
			break;			
		}
	}
	if(tontai==1){
		printf("\n%d co trong day \n",x);
	}else{
		printf("\n%d khong co trong day \n",x);
	}
}

void xuatSoLe(int arr[], int n){
	int tontai=0;
	for(int i=1; i<n; i++){
		if(arr[i]%2==1){
			tontai=1;
			printf("%d  ",arr[i]);
		}
	}
	if(tontai==0){
		printf("\n'Day ko ton tai so le '\n");
	}
}

int timUCLN(int a, int b){
	int min=(a<b)?a:b;
	for(int i=min; ;i--){
		if(a%i==0 && b%i==0){
			return i;
		}
	}
}

int timBCNN(int a, int b){
	return (a*b)/timUCLN(a,b);
}
int main(){
	int a,b;
	printf("Nhap 2 so nguyen \n");
	printf("Nhap so nguyen a :");
	scanf("%d",&a);
	printf("Nhap so nguyen b :");
	scanf("%d",&b);
	
	printf("Uoc chung lon nhat cua %d va %d la %d \n",a,b,timUCLN(a,b));
	printf("Boi chung nho nhat cua %d va %d la %d \n",a,b,timBCNN(a,b));
	
	int n;
	printf("Nhap kich thuoc day so :");
	scanf("%d",&n);
	
	int arr[n];
	for(int i=0; i<n; i++){
		printf("Nhap phan tu thu %d : ",i+1);
		scanf("%d",&arr[i]);
	}
	int x;
	printf("\nNhap so can tim :");
	scanf("%d",&x);
	timKiem(arr,n,x);
	
	printf("\nCac so le co trong day :\n");
	xuatSoLe(arr,n);
}

