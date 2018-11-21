#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
//	FILE *fp;
//	char pm_hm_SSL[50] = "\nSSL_ID 3 . System Going to Halt Mode\n";
	printf("in halt v2.0\n");
	system("/usr/bin/halt_cmd_nyc.sh");
/*	fp = fopen("/usr/bin/tmpSSL.txt","a+");
	if(fp == NULL)
	{
//		printf("Can not open \"/usr/bin/tmpSSL.txt\" \n");
	}
	else
	{
		fwrite(pm_hm_SSL,sizeof(char),strlen(pm_hm_SSL),fp);
	}
	fclose(fp);	
*/

}

