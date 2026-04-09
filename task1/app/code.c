#include <stdio.h>
#include <sys/stat.h>
#include "code.h"

void welcome_message()
{
    printf("Welcome!\n");
}

void get_name(char* name)
{
    printf("Enter group name : ");
    fgets(name, 256, stdin);
    // Remove newline if present
    size_t len = 0;
    while (name[len] != '\0') len++;
    if(len > 0 && name[len-1] == '\n') name[len-1] = '\0';
}

void create_folder(char* name)
{
    if (mkdir(name, 0755) == 0) {
        printf("Folder '%s' created successfully.\n", name);
    } else {
        perror("Error creating folder");
    }
}

void create_file(char* folder_name, char* group_name)
{
    char path[512];
    snprintf(path, sizeof(path), "%s/group.txt", folder_name);

    FILE *file = fopen(path, "w");
    if (file == NULL) {
        perror("Error creating file");
        return;
    }

    fprintf(file, "%s\n", group_name);
    fclose(file);

    printf("File '%s' created with group name.\n", path);
}
