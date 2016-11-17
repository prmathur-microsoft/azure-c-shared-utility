#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/fcntl.h>
#include <sys/unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/signal.h>
#include <time.h>
#include <dirent.h>
#include <wchar.h>
#include <math.h>


extern void _pause(); // Will pause the nestedvm until you hit execute again
extern int _call_java(int op, int args, int unused_1, int unused_2);

enum TAGS {
	SOCKET,
	CLOSE,
	SEND,
	RECEIVE
};

int call_socket(char* hostName, int port) {
	typedef struct ARGS {
		int port;
		int hostNameLength;
		char* hostname;					
	} ARGS;
	ARGS args = {port, strlen(hostName)* sizeof(char), hostName}; 
	int ret = -1;
	
	if (hostName != NULL) {
		ret = _call_java(SOCKET, (int)&args, 0, 0);
	}
	else {
		ret = -1;
	}
	
	ret = 0;
	
	//_pause();
	return ret;
}

int call_send() {
	
}

int call_close() {
	
}


