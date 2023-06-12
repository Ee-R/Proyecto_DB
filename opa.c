#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#define MAX_SIZE 64
#define WORDS 2
#define PAIRS_BUFFER 1024
#define ENTRYS 146
#define MOVIES 12
#define ROLES 23


int main(int argc, char *argv[])
{
    //int **participaciones = malloc(sizeof(int*) * MOVIES);
    char pedro[ENTRYS][WORDS][MAX_SIZE] ={
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
        {"Eric", "Roth"},           
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
        {"Winston", "Groom"}, 
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
        {"Gary K.", "Wolf"},         
        {"Alan", "Silvestri"},      
        {"Lawrence G", "Paul"},     
        {"Harry", "Keramidas"},     
        {"Arthur", "Schmidt"},      
        {"Tom", "Hanks"},           
        {"Bob", "Hoskins"},           
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
        {"Robert", "Dalva"},
        {"Randall", "Wallace"},
        {"Don", "Hahn"},
        // agregados, Gary Wolf, Randall Wallace, Don Hahn
    };
    char roles[ROLES][MAX_SIZE] = {
        ("director fotografia"),
        ("diseno de produccion"),
        ("direccion arte"),
        ("decoracion del set"),
        ("vestuarista"),
        ("maquillaje"),
        ("editor"),
        ("director"),
        ("productor"),
        ("casting"),
        ("manager produccion"),
        ("supervisor postproduccion"),
        ("supervisor produccion"),
        ("coproductor"),
        ("productor ejecutivo"), 
        ("actor principal"),
        ("actor secundario"),
        ("actor de voz"),
        ("guionista"),
        ("autor"),
        ("personajes"),
        ("compositor"),
        ("animacion")
    };
    FILE *file_participaciones= fopen("./participaciones.txt", "r");
    char *lineptr = NULL; // sera el buffer con la linea leida, cambia el puntero de archivo a la ultima linea
    size_t len = 0;
    int id_persona;
    int pares_participacion_rol[PAIRS_BUFFER][2]; // [(id_participacion,id_rol)], la participacion x tiene un rol y
    int cantidad_participaciones_en_peliculas = 0;

    for(int j = 0; j < MOVIES; j++){
        getline(&lineptr,&len,file_participaciones);
        for (int k = 0; k < ROLES; k++) {
            printf("id rol %s : %d\t\t",roles[k],k+1);
            if(k % 2 == 0) printf("\n");
        }
        int i = 0;
        int save_point;
        while(1){
            int not_null_char;
            while((not_null_char = lineptr[i] != '\0') && lineptr[i] != ')' )i++;
            if(!not_null_char)break;

            cantidad_participaciones_en_peliculas++;
            save_point = i + 1;
            while(lineptr[i] != ',')i--;
            sscanf(lineptr + i + 1,"%d",&id_persona);
            i = save_point;
            printf("Cuantas participaciones tuvo %s %s en la pelicual %d",pedro[id_persona-1][0],pedro[id_persona-1][1],j);
            // el id_persona-1 porque los ids estan de [1,n]
            printf("Rol de %s %s en la pelicula %d\n",pedro[id_persona-1][0],pedro[id_persona-1][1],j+1);
            scanf("%d",&pares_participacion_rol[cantidad_participaciones_en_peliculas-1][1]);
            pares_participacion_rol[cantidad_participaciones_en_peliculas-1][0] = cantidad_participaciones_en_peliculas;
        }
        free(lineptr);
    }

    fclose(file_participaciones);

    //for (int i = 0; i < ENTRYS; i++) {
    //    char *nombre = pedro[i][0];
    //    char *apellido = pedro[i][1];
    //    for (int j = i+1; j < ENTRYS; j++) {
    //        if(!strcmp(apellido, pedro[j][1]) && !strcmp(nombre,pedro[j][0])){
    //            printf("%d - %d \n",j,i);
    //        }
    //    }
    //}
    ////for (int j = 0;j < ENTRYS;j++) {
    ////    printf("(%d - \"%s\",\"%s\"),\n",j,pedro[j][0],pedro[j][1]);
    ////}
    //
    //int tamanios[MOVIES];
    //for (int i = 0; i < MOVIES; i++) {
    //    int size = 0;
    //    int aux;
    //    participaciones[i] = malloc(sizeof(int)*32);
    //    do{
    //        size++;
    //        printf("\npelicula - %d, inserte id actor: \n",i+1);
    //        scanf("%d",&aux);
    //    }while(aux != 0 && (participaciones[i][size-1] = aux));
    //    size--;
    //    tamanios[i] = size;
    //}

    //for(int i = 0; i < MOVIES; i++){
    //    for(int j = 0; j < tamanios[i]; j++){
    //        printf("(%d,%d),",i, participaciones[i][j]);
    //    }
    //    if(tamanios[i] != 0)
    //        printf("\n");
    //}


    return 0;
}
