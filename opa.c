#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#define MAX_SIZE 64
#define WORDS 2
#define PAIRS_BUFFER 1024
#define ENTRYS 146
#define MOVIES 12
#define ROLES 24
#define MAX_PARTICIPACIONES 200

void fill_in_row(int, int[MAX_PARTICIPACIONES][ROLES], char buff[]);

int main(int argc, char *argv[]) {
  // int **participaciones = malloc(sizeof(int*) * MOVIES);
  char personas[ENTRYS][WORDS][MAX_SIZE] = {
      {"Kate", "Winslet"},
      {"Leonardo", "DiCaprio"},
      {"Frances", "Fisher"},
      {"Billy", "Zane"},
      {"Kathy", "Bates"},
      {"Gloria", "Stuart"},
      {"Bill", "Paxton"},
      {"Bernard", "Hill"},
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
  char roles[ROLES][MAX_SIZE] = {("director fotografia"),
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
                                 ("animacion"),
                                 ("historia")};
  int participacion_roles[MAX_PARTICIPACIONES][ROLES] = {{0}};
  FILE *file_participaciones = fopen("./participaciones.txt", "r");
  int id_persona;
  int participaciones_totales = 0;

  for (int j = 0; j < MOVIES; j++) {
    char *lineptr = NULL; // sera el buffer con la linea leida, cambia el
                          // puntero de archivo a la ultima linea
    size_t len = 0;
    getline(&lineptr, &len, file_participaciones);

    for (int k = 0; k < ROLES; k++) {
      printf("%s : %d\n", roles[k], k);
    }
    int i = 0;
    int save_point;
    while (1) {
      char input_buffer[64];
      int not_null_char;
      while ((not_null_char = lineptr[i] != '\0') && lineptr[i] != ')')
        i++;
      if (!not_null_char)
        break;

      save_point = i + 1;
      while (lineptr[i] != ',')
        i--;
      sscanf(lineptr + i + 1, "%d", &id_persona);
      i = save_point;

      printf("Inserte los roles de %s %s en %d, separados por comas y con coma "
             "al inicio:\n",
             personas[id_persona - 1][0], personas[id_persona - 1][1], j + 1);

      scanf("%s", input_buffer);
      fill_in_row(participaciones_totales, participacion_roles, input_buffer);
      participaciones_totales++;
    }
    free(lineptr);
  }

  fclose(file_participaciones);

  for (int i = 0; i < participaciones_totales; i++) {
    for (int j = 0; j < ROLES; j++) {
      if (participacion_roles[i][j]) {
        printf("(%d,%d),\n", i + 1, j + 1);
      }
    }
    printf("\n");
  }

  // for (int i = 0; i < ENTRYS; i++) {
  //     char *nombre = pedro[i][0];
  //     char *apellido = pedro[i][1];
  //     for (int j = i+1; j < ENTRYS; j++) {
  //         if(!strcmp(apellido, pedro[j][1]) && !strcmp(nombre,pedro[j][0])){
  //             printf("%d - %d \n",j,i);
  //         }
  //     }
  // }
  ////for (int j = 0;j < ENTRYS;j++) {
  ////    printf("(%d - \"%s\",\"%s\"),\n",j,pedro[j][0],pedro[j][1]);
  ////}
  //
  // int tamanios[MOVIES];
  // for (int i = 0; i < MOVIES; i++) {
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

  // for(int i = 0; i < MOVIES; i++){
  //     for(int j = 0; j < tamanios[i]; j++){
  //         printf("(%d,%d),",i, participaciones[i][j]);
  //     }
  //     if(tamanios[i] != 0)
  //         printf("\n");
  // }

  return 0;
}

void fill_in_row(int row, int roles[MAX_PARTICIPACIONES][ROLES], char buff[]) {
  int i = 0;
  int opa;
  while (buff[i] != '\0') {
    if (buff[i] == ',') {
      sscanf(buff + i + 1, "%d", &opa);
      roles[row][opa] = opa;
    }
    i++;
  }
}
