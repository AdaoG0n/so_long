/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adamarqu <adamarqu@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/18 18:59:51 by adamarqu          #+#    #+#             */
/*   Updated: 2024/12/18 18:59:52 by adamarqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_list;
	t_list	*element;

	if (!lst)
		return (NULL);
	new_list = NULL;
	while (lst)
	{
		element = ft_lstnew((*f)(lst->content));
		if (!element)
		{
			ft_lstclear(&element, (*del));
			return (NULL);
		}
		ft_lstadd_back(&new_list, element);
		lst = lst->next;
	}
	return (new_list);
}
