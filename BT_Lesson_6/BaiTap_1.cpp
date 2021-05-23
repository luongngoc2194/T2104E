#include<stdio.h>

int main(){
	int n,exit,count,counts ;
	exit=0;
	count=0;
	counts=0;
	
	do{
		counts+=count;
		printf("Moi chon phuc vu :\n");
		printf("---------------------\n");
		printf("1-Chon mon an\n2-Chon do uong\n3-Thanh toan\n4-Thoat\n");
		printf("==============================================\n");
		scanf("%d",&n);
		int qLai=0;
		switch(n) {
		
			case 1:
				do{
					int i;
					
					printf("Menu : Mon An\n");
					printf("---------------------\n");
					printf("1_Bun cha Ha Noi\n2_Bun dau mam tom\n3_Bun bo Hue\n4_Quay lai\n");
					printf("==============================================\n");
					scanf("%d",&i);
					switch(i){
						case 1:
							count=count+5000;
							printf("Quy khach da chon 'Bun cha'_Cam on \n");
							printf("Moi tiep tuc chon mon hoac quay lai phuc vu\n");
							printf("==============================================\n");
							break;
						case 2:
							count=count+6000;
							printf("Quy khach da chon 'Bun dau man tom'_Cam on \n");
							printf("Moi tiep tuc chon mon hoac quay lai phuc vu\n");
							printf("==============================================\n");
							break;
						case 3:
							count=count+2000;
							printf("Quy khach da chon 'Bun bo Hue'_Cam on \n");
							printf("Moi tiep tuc chon mon hoac quay lai phuc vu\n");
							printf("==============================================\n");
							break;
						case 4:
							
							printf("Moi tiep tuc chon phuc vu\n");
							printf("==============================================\n");
							qLai=1;
							break;
						default	:
							printf("Lua chon khong hop le, moi quy khach nhap lai\n");
							printf("==============================================\n");
							break;			
					}					
				}while(qLai==0);
				
				break;

			case 2:
				do{
					int i ;
					
					printf("Menu : Do Uong\n");
					printf("---------------------\n");
					printf("1_Cocacola\n2_Sting dau\n3_Tra chanh\n4_Quay lai\n");
					printf("==============================================\n");
					scanf("%d",&i);
					switch(i){
						case 1:
							count=count+5000;
							printf("Quy khach da chon 'Cocacola'_Cam on \n");
							printf("Moi tiep tuc chon mon hoac quay lai phuc vu\n");
							printf("==============================================\n");
							break;
						case 2:
							count=count+5000;
							printf("Quy khach da chon 'Sting dau'_Cam on \n");
							printf("Moi tiep tuc chon mon hoac quay lai phuc vu\n");
							printf("==============================================\n");
							break;
						case 3:
							count=count+5000;
							printf("Quy khach da chon 'Tra chanh'_Cam on \n");
							printf("Moi tiep tuc chon mon hoac quay lai phuc vu\n");
							printf("==============================================\n");
							break;
						case 4:
							
							printf("Moi tiep tuc chon phuc vu\n");
							printf("==============================================\n");
							qLai=1;
							break;
						default	:
							printf("Lua chon khong hop le, moi quy khach nhap lai\n");
							printf("==============================================\n");
							break;			
					}					
				}while(qLai==0);
				
				break;
				
			case 3:
				printf("Xuat hoa don :\n_Tong thanh toan cua quy khach la %d\n",count);
				exit=1;
				break;
			case 4:
				exit=1;
				break;	
			
			default:
				printf("Lua chon khong hop le, moi quy khach nhap lai\n");
				printf("==============================================\n");
				break;
		}
	}while(exit==0);
	
}

