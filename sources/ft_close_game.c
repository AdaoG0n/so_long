/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_close_game.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adamarqu <adamarqu@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/18 18:09:42 by adamarqu          #+#    #+#             */
/*   Updated: 2024/12/18 18:09:43 by adamarqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

int	ft_victory(t_game *game);
int	ft_close_game(t_game *game);
int	ft_error_msg(char *message, t_game *game);

int	ft_victory(t_game *game)
{
	ft_printf(CYAN"\n			Movements: %d\n"RESET, ++game->movements);
	ft_free_all_allocated_memory(game);
	ft_printf(GREEN"\n\
                                                              \n\
  ███  ███  ██████  ██    ██     ██      ██ ██ ██    ██   ██  \n\
   ██  ██  ██    ██ ██    ██     ██      ██ ██ ███   ██   ██  \n\
    ████   █      █ ██    ██     ██  ██  ██ ██ ██ ██ ██   ██  \n\
     ██    ██    ██ ██    ██     ██ ████ ██ ██ ██  ████       \n\
     ██     ██████    ████        ███  ███  ██ ██   ███   ██  \n\
                                                              \n\
"RESET);
	exit (EXIT_FAILURE);
}

int	ft_close_game(t_game *game)
{
	ft_printf(CYAN"Movements: %d\n"RESET, game->movements);
	ft_free_all_allocated_memory(game);
	ft_printf(GREY"CLOSED\n"RESET);
	exit (EXIT_FAILURE);
}

int	ft_error_msg(char *message, t_game *game)
{
	if (game->map_alloc == true)
		ft_free_map(game);
	free(game);
	ft_printf(RED"Error\n"GREY"%s\n"RESET, message);
	exit (EXIT_FAILURE);
}
