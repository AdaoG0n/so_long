/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_count_occurrences.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adamarqu <adamarqu@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/18 18:56:38 by adamarqu          #+#    #+#             */
/*   Updated: 2024/12/18 18:56:39 by adamarqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_count_occurrences(char *str, char c)
{
	int	occurrences;
	int	i;

	i = 0;
	occurrences = 0;
	while (str[i])
	{
		if (str[i] == c)
			occurrences++;
		i++;
	}
	return (occurrences);
}
