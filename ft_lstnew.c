/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmalope <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/05 08:02:54 by pmalope           #+#    #+#             */
/*   Updated: 2019/06/12 12:26:44 by pmalope          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list		*ft_lstnew(void const *content, size_t content_size)
{
	t_list	*node;
	size_t	i;

	i = 0;
	node = (t_list *)malloc(sizeof(t_list));
	if (!node)
		return (NULL);
	if (content)
	{
		node->content = (char *)malloc(content_size);
		if (node->content)
		{
			while (i < content_size)
			{
				((char *)node->content)[i] = ((char *)content)[i];
				i++;
			}
		}
		node->content_size = content_size;
	}
	else
	{
		node->content = NULL;
		node->content_size = 0;
	}
	node->next = NULL;
	return (node);
}
