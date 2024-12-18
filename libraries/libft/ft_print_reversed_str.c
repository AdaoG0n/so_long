/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_reversed_str.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adamarqu <adamarqu@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/18 18:57:05 by adamarqu          #+#    #+#             */
/*   Updated: 2024/12/18 18:57:06 by adamarqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_print_reversed_str(char *str)
{
	int	i;
	int	bytes;

	bytes = ft_strlen(str);
	i = bytes - 1;
	while (i >= 0)
		write(1, &str[i--], sizeof(char) * 1);
	return (bytes);
}
