#include "libft.h"

void    ft_putstr_fd(const char *s, int fd)
{
    int i;

    i = 0;
    while (s[i] != '\0')
    {
        ft_putchar_fd(s[i], fd);
        i++;
    }
}