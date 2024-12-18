/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long_bonus.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adamarqu <adamarqu@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/18 18:14:29 by adamarqu          #+#    #+#             */
/*   Updated: 2024/12/18 18:14:31 by adamarqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long_bonus.h"

int	main(int argc, char	**argv)
{
	t_game	*game;

	game = malloc(sizeof(t_game));
	ft_check_command_line_arguments(argc, argv, game);
	ft_init_map(game, argv[1]);
	ft_init_vars(game);
	ft_check_map(game);
	ft_init_mlx(game);
	ft_init_sprites(game);
	ft_render_map(game);
	mlx_hook(game->win_ptr, KeyPress, KeyPressMask, ft_handle_input, game);
	mlx_hook(game->win_ptr, \
	DestroyNotify, ButtonPressMask, ft_close_game, game);
	mlx_hook(game->win_ptr, Expose, ExposureMask, ft_render_map, game);
	mlx_loop(game->mlx_ptr);
	ft_free_all_allocated_memory(game);
}
