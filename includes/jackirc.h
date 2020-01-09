#ifndef JACKIRC_H
# define JACKIRC_H
# include <sys/socket.h>
# include <sys/types.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <netinet/in.h>
# include <arpa/inet.h>
# include <netdb.h>
# include <pthread.h> 
# include <math.h>

struct		irc_message_s
{
	char* ptr;
	char** args;
	size_t len;		
};

int		send_message(int fd, char* msg, size_t len);
char**	strsplit_ptr(char* str, char del, size_t len);
int		handle_ping(int fd, char* msg);
int		handle_message(char** msg);


#endif