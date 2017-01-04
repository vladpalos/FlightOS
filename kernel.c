/*
*  kernel.c
*/

void clearScreen(char *vidptr) {
	unsigned short int j;
	for (j = 0; j < 80 * 25 * 2; j += 2) {
		vidptr[j] = ' ';
		vidptr[j+1] = 0x07; 			
	}	
}

void kmain(void) {
	char *str = "Welcome ...                                                                     FlyOS (V.Palos)";
	char *vidptr = (char*)0xb8000; 	
	unsigned short int i = 0, j;

	clearScreen(vidptr);

	for (j = 0; str[j] != '\0'; j++) {
		vidptr[i++] = str[j];
		vidptr[i++] = 0x09;		
	}

	return;
}
