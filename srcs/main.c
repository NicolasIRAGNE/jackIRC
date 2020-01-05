#include "jackirc.h"

#define DEFAULT_NICK "jackIRC"
#define DEFAULT_USER "jackIRC jackIRC jackIRC :alexandre benalla"

#define DEFAULT_SERVER "irc.freenode.net"
#define DEFAULT_PORT 6667

char* channel;
int running = 1;

void	*open_listen_thread(void* fd)
{
	char buffer[BUFSIZ];
	int rd;
	int* tmp = (int*)fd;

	while ((rd = recv(*tmp, buffer, BUFSIZ, 0)))
	{
		buffer[rd] = 0;
		printf("%s", buffer);
	}
	return NULL;
}

int		handle_command(char* command, char* buffer)
{
	size_t len = strlen(command);
	memcpy(buffer, command + 1, len);
	return (len - 1);
}

void	*open_send_thread(void* fd)
{
	char buffer[BUFSIZ];
	char msg[BUFSIZ];
	int rd;
	int* tmp = (int*)fd;

	sleep(1);
	rd = sprintf(buffer, "NICK %s\n", DEFAULT_NICK);
	printf("trying to send %s\n", buffer);
	send(*tmp, buffer, rd, 0);
	rd = sprintf(buffer, "USER %s\n", DEFAULT_USER);
	printf("trying to send %s\n", buffer);
	send(*tmp, buffer, rd, 0);
	rd = sprintf(buffer, "join #%s\n", channel);
	printf("trying to send %s\n", buffer);
	send(*tmp, buffer, rd, 0);

	while (rd = read(0, msg, BUFSIZ))
	{
		msg[rd] = 0;
		if (msg[0] == '/')
			rd = handle_command(msg, buffer);
		else
			rd = sprintf(buffer, "PRIVMSG #%s :%s", channel, msg);
		
		send(*tmp, buffer, rd, 0);

	}
	running = 0;
	return NULL;
}


int main(int ac, char** av)
{
	(void)av;
	struct sockaddr_in serv_addr;
	int listenfd;
	struct hostent* host;
	char buffer[BUFSIZ];
	int rd;
    pthread_t listen_thread;
    pthread_t send_thread;

	if (ac != 2)
	{
		printf("%s: usage: %s <channel>\n", av[0], av[0]);
		goto _end;
	}
	channel = av[1];
	listenfd = socket(AF_INET, SOCK_STREAM, 0);
	if(listenfd == -1)
	{
		perror(av[0]);
		goto _end;
	}
    printf("[+] socket %d successfully opened\n", listenfd);

	host = gethostbyname(DEFAULT_SERVER);
	serv_addr.sin_port = htons(DEFAULT_PORT);
	serv_addr.sin_addr.s_addr = *(unsigned long*)host->h_addr_list[0];
	serv_addr.sin_family = AF_INET;

	int connected = connect(listenfd, (const struct sockaddr*)&serv_addr, sizeof(serv_addr));
	if (connected)
	{
		perror(av[0]);
		goto _close;
	}
    printf("[+] connection successful\n", listenfd);

	pthread_create(&listen_thread, NULL, open_listen_thread, &listenfd);  
	pthread_create(&send_thread, NULL, open_send_thread, &listenfd);  
    pthread_join(send_thread, NULL);



_close:
	if (close(listenfd) == -1)
	{
		perror(av[0]);
		goto _end;
	}	
    printf("[+] socket %d successfully closed\n", listenfd);

	return (0);

_end:
	return (1);
}