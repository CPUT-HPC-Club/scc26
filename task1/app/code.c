// INCLUDES
#include <stdio.h>
#include "code.h"
#include <sys/stat.h>
#include <sys/types.h>
// GLOBALS


//FUNCTIONS
// welcome message
void welcome_message()
{
    printf("Welcome!\n");
}
// get group name
void get_name(char* name)
{
    printf("Enter group name : ");
    gets(name);
}

// 1. Function to create a folder using the name variable as its name
void create_folder(char* name)
{
	if(mkdir(name, 0755) == 0) {
	  printf("Folder '%s' created.\n", name);
	}else{
	  printf("Error creating folder '%s'", name);
	}
}

// 2. Function to create a file in the folder <folder_name> called group.txt where you insert the <group_name> as text
void create_file(char* folder_name, char* group_name)
{
	char path[512]; //Buffer
	snprintf(path, sizeof(path), "%s/group.txt", folder_name);

	FILE *file;

	file = fopen(path, "w");
	if(file == NULL){
	  printf("Error creating file");
	  return;
	}
	
	fprintf(file, "%s\n", group_name);

	fclose(file);
}
