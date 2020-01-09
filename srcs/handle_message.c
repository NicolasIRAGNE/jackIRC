#include "jackirc.h"

int		handle_response(char* msg)
{

}

int		send_message(int fd, char* msg, size_t len)
{
	send(fd, msg, len, 0);
}

int		handle_ping(int fd, char* msg)
{
	char buffer[BUFSIZ];
	int len = sprintf(buffer, "PING %s", msg);
	printf("trying to send %s\n", buffer);
	send(fd, buffer, len, 0);
}

int		handle_message(char** msg)
{
	char* ptr = strchr(msg[0] + 1, '!');
	*ptr = 0;
	printf("%s@%s : %s\n", msg[0] + 1, msg[2], msg[3]);
}