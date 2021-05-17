//Tính lai thu nhap gui tien tiet kiem
#include<stdio.h>
#include<math.h>

int main(){
	float tienGui, laiXuat, thuHoi;
	int thoiGian;
	 printf("Nhap so tien gui :");
	 scanf("%f",&tienGui);
	 
	 printf("Nhap lai xuat gui ( %%/nam ) :");
	 scanf("%f",&laiXuat);
	 
	 printf("Nhap thoi gian gui ( nam ) :");
	 scanf("%d",&thoiGian);
	 
	 thuHoi=tienGui*pow((100 + laiXuat)/100,thoiGian);
	 
	 printf("================================\n");
	 printf("Tien gui : %.2f $ \nLai xuat : %.2f %%/nam \nThoi gian : %d nam\nThu hoi : %.2f $\n",tienGui, laiXuat, thoiGian, thuHoi);
	 printf("================================\n");
}

