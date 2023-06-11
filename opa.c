#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#define MAX_SIZE 64
#define WORDS 2
#define PAIRS_BUFFER 8192
#define ENTRYS 139
#define MOVIES 12

int main(int argc, char *argv[])
{
    int **participaciones = malloc(sizeof(int*) * MOVIES);
    char pedro[][WORDS][MAX_SIZE] ={
        {"Kate", "Winslet"},        
        {"Leonardo", "DiCaprio"},   
        {"Frances", "Fisher"},
        {"Billy", "Zane"},          
        {"Kathy", "Bates"},         
        {"Gloria", "Stuart"},       
        {"Bill", "Paxton"},         
        {"Bernard" ,"Hill"},        
        {"Peter", "Lamont"},        
        {"Martin", "Laing"},        
        {"Deborah", "Scott"},       
        {"Michael", "Ford"},        
        {"Conrad", "Buff IV"},      
        {"James", "Cameron"},       
        {"Richard", "Harris"},      
        {"Mali", "Finn"},           
        {"Sharon", "Mann"},         
        {"Anna", "Roth"},           
        {"Lisa Denis", "Kennedy"},  
        {"Giedra", "Rackauskas"},   
        {"Hayao", "Miyazaki"},      
        {"Toshio", "Suzuki"},       
        {"Rumi", "Hîragi"},         
        {"Miyu", "Irino"},          
        {"Mari", "Natsuki"},        
        {"Takeshi", "Seyama"},      
        {"Kaori", "Fujii"},         
        {"Naoya", "Furukawa"},      
        {"Makiko", "Futaki"},       
        {"Hideyoshi", "Hamatsu"},   
        {"Shinji", "Hashimoto"},    
        {"Takeshi", "Imamura"},     
        {"Kuniyuki", "Ishii"},      
        {"Norobu", "Yoshida"},      
        {"Yôji", "Takeshige"},      
        {"Joe", "Hisaishi"},        
        {"Atsushi", "Okui"},        
        {"Yasuyoshi", "Tokuma"},    
        {"Mark", "Hamill"},         
        {"Carrie", "Fisher"},       
        {"Peter", "Cushing"},       
        {"Anthony", "Daniels"},     
        {"Kenny", "Baker"},         
        {"Alec", "Guinness"},       
        {"George", "Lucas"},        
        {"Gary", "Kurtz"},          
        {"Gilbert", "Taylor"},      
        {"John", "Williams"},       
        {"Rob", "Bottin"},          
        {"John", "Mollo"},          
        {"Rick", "McCallum"},       
        {"Pete", "Docter"},         
        {"Meg", "LeFauve"},         
        {"Josh", "Cooley"},         
        {"Amy", "Poehler"},         
        {"Phyllis", "Smith"},       
        {"Richard", "Kind"},        
        {"Bill", "Hader"},          
        {"Lewis", "Black"},         
        {"Mindy", "Kaling"},        
        {"Mel", "Gibson"},          
        {"Patsy", "Pollock"},       
        {"Bruce", "Davey"},         
        {"John", "Toll"},           
        {"Tom", "Sanders"},         
        {"Steven", "Rosenblum"},    
        {"Catherine", "McCormack"}, 
        {"Sophie", "Marceau"},      
        {"Patrick", "McGoohan"},    
        {"Angus", "Macfadyen"},     
        {"Brendan", "Gleeson"},     
        {"James", "Robinson"},      
        {"James", "Cosmo"},         
        {"Robert", "Zemeckis"},     
        {"Bob", "Gale"},            
        {"Michael J.", "Fox"},      
        {"Christopher", "Lloyd"},   
        {"Lea", "Thompson"},        
        {"Crispin", "Glover"},      
        {"Thomas F.", "Wilson"},    
        {"James", "Tolkan"},        
        {"Claudia", "Wells"},       
        {"Dean", "Cundey"},         
        {"Alan", "Silvestri"},      
        {"Lawrence G", "Paul"},     
        {"Harry", "Keramidas"},     
        {"Arthur", "Schmidt"},      
        {"Tom", "Hanks"},           
        {"Robin", "Wright"},        
        {"Gary", "Sinise"},         
        {"Sally", "Field"},         
        {"Mykelti", "Williamson"},  
        {"Rebecca", "Williams"},    
        {"Wendy", "Finerman"},      
        {"Steve", "Tisch"},         
        {"Peter S.", "Seaman"},     
        {"Charles", "Fleischer"},   
        {"Steven", "Spielberg"},    
        {"Steve", "Starkey"},       
        {"Robert", "Watts"},        
        {"Joanna", "Johnston"},     
        {"Roger", "Cain"},          
        {"Harrison", "Ford"},       
        {"Sean", "Connery"},        
        {"Denholm", "Elliott"},     
        {"Alison", "Doody"},        
        {"John", "Rhys-Davies"},    
        {"Julian", "Glover"},       
        {"River", "Phoenix"},       
        {"Douglas", "Slocombe"},    
        {"Ben", "Burtt"},           
        {"Elliot", "Scott"},        
        {"Michael", "Kahn"},        
        {"Frank", "Marshall"},      
        {"Michael D.", "Moore"},    
        {"Philip", "Kaufman"},      
        {"Menno", "Meyjes"},        
        {"Jeffrey", "Boam"},        
        {"Arthur F", "Repola"},     
        {"Maggie", "Cartier"},      
        {"Mike", "Fenton"},         
        {"Valorie", "Massalas"},    
        {"Chris", "Van Allsburg"},  
        {"Jonathan", "Hensleigh"},  
        {"Greg", "Taylor"},         
        {"Jim", "Strain"},          
        {"William", "Teitler"},     
        {"Scott", "Kroopf"},        
        {"Larry J.", "Franco"},     
        {"Joe", "Johnston"},        
        {"Robin", "Williams"},      
        {"Jonathan", "Hyde"},       
        {"Kirsten", "Dunst"},       
        {"Bradley", "Pierce"},      
        {"Bonnie", "Hunt"},         
        {"Bebe", "Neuwirth"},       
        {"Thomas E. ", "Ackerman"}, 
        {"James", "Horner"},        
        {"James D. ", "Bissell"},   
        {"Robert", "Dalva"}
    };
    //for (int i = 0; i < ENTRYS; i++) {
    //    char *nombre = pedro[i][0];
    //    char *apellido = pedro[i][1];
    //    for (int j = i+1; j < ENTRYS; j++) {
    //        if(!strcmp(apellido, pedro[j][1]) && !strcmp(nombre,pedro[j][0])){
    //            printf("%d - %d \n",j,i);
    //        }
    //    }
    //}
    int tamanios[MOVIES];
    for (int i = 0; i < MOVIES; i++) {
        for (int j = 0;j < ENTRYS;j++) {
            printf("%d - %s %s\t\t",j+1,pedro[j][0],pedro[j][1]);
            if(j % 3 == 0)printf("\n");
        }
        int size = 0;
        int aux;
        participaciones[i] = malloc(sizeof(int)*32);
        do{
            size++;
            printf("\npelicula - %d, inserte id actor: \n",i+1);
            scanf("%d",&aux);
        }while(aux != 0 && (participaciones[i][size-1] = aux));
        size--;
        participaciones[i] = realloc(participaciones[i],size);
        tamanios[i] = size;
    }

    for(int i = 0; i < MOVIES; i++){
        for(int j = 0; j < tamanios[i]; j++){
            printf("(%d,%d),",i+1,participaciones[i][j]);
        }
        printf("\n");
    }

    return 0;
}


