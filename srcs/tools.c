#include <unistd.h>
#include <stdlib.h>

char**	strsplit_ptr(char* str, char del, size_t len)
{
	size_t i = 0;
	size_t tmp = 1;
	int flag = 0;

	while (i < len)
	{

		if (str[i] == del)
			flag = 1;
		else
		{
			if (flag)
			{
				tmp++;
				if (str[i] == ':')
					break;
			}
			flag = 0;
		}
		i++;
	}
	char** ret = malloc((tmp + 1) * sizeof(char*));
	i = 0;
	tmp = 1;
	flag = 0;
	ret[0] = str;
	while (i < len)
	{
		if (str[i] == del)
		{
			flag = 1;
			str[i] = 0;
		}
		else
		{
			if (flag)
			{
				if (str[i] == ':')
				{
					ret[tmp] = str + i + 1;
					tmp++;
					break;
				}
				ret[tmp] = str + i;
				tmp++;
			}
			flag = 0;
		}
		i++;
	}
	ret[tmp] = 0;
	return (ret);
}