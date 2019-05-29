/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmalope <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/25 08:50:16 by pmalope           #+#    #+#             */
/*   Updated: 2019/05/29 14:29:17 by pmalope          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void    *ft_memmove(void *dst, const void *src, size_t len)
{
    unsigned char temp[len];

    if (dst == src)
        return ((char *)src);
    ft_memcpy(temp, src, len);
    ft_memcpy(dst, temp, len);
    return (dst);
}
