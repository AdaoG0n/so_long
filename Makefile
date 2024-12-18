# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adamarqu <adamarqu@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/18 18:05:49 by adamarqu          #+#    #+#              #
#    Updated: 2024/12/18 18:06:08 by adamarqu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME			= so_long
NAME_BONUS		= so_long_bonus

DEL_LINE 	= \033[2K
ITALIC 		= \033[3m
BOLD 		= \033[1m
DEF_COLOR 	= \033[0;39m
GRAY		= \033[0;90m
GREEN		= \033[0;32m
RED			= \033[0;31m
RESET		= \033[0m
YELLOW 		= \033[0;93m
BLUE 		= \033[0;94m
MAGENTA 	= \033[0;95m
CYAN 		= \033[0;96m
WHITE 		= \033[0;97m
BLACK 		= \033[0;99m
ORANGE 		= \033[38;5;209m
BROWN 		= \033[38;2;184;143;29m
DARK_GRAY 	= \033[38;5;234m
MID_GRAY 	= \033[38;5;245m
DARK_GREEN 	= \033[38;2;75;179;82m
DARK_YELLOW = \033[38;5;143m


LIBFT 			= ./libraries/libft/libft.a

CC 				= cc

STANDARD_FLAGS 	= -Wall -Werror -Wextra
MINILIBX_FLAGS	= -lmlx -lXext -lX11

VALGRIND		= @valgrind --leak-check=full --show-leak-kinds=all \
--track-origins=yes --quiet --tool=memcheck --keep-debuginfo=yes

RM 			= rm -f

SRCS_DIR		= ./sources/
BONUS_SRCS_DIR	= ./bonus_sources/

OBJS = $(SRCS:.c=.o)

SRCS 			= $(addprefix $(SRCS_DIR),\
				so_long.c			\
				ft_check_map.c		\
				ft_close_game.c		\
				ft_free_memory.c	\
				ft_handle_input.c	\
				ft_init_game.c		\
				ft_init_map.c		\
				ft_render_map.c		\
				ft_utils.c)

SRCS_BONUS 		= $(addprefix $(BONUS_SRCS_DIR),\
				so_long_bonus.c				\
				ft_check_map_bonus.c		\
				ft_close_game_bonus.c		\
				ft_free_memory_bonus.c		\
				ft_handle_input_bonus.c		\
				ft_init_game_bonus.c		\
				ft_init_map_bonus.c			\
				ft_render_map_bonus.c		\
				ft_utils_bonus.c)

all:			${LIBFT} ${NAME}

${NAME}: 		
				@${CC} ${SRCS} ${LIBFT} ${STANDARD_FLAGS} ${MINILIBX_FLAGS} -o ${NAME}
				@echo "\${BLUE}                                                            \n\
    	▄▄▄▄ ▄▄▄▄      ▄    ▄▄▄▄ ▄  ▄ ▄▄▄▄ ${GREEN}        ▄ ${BLUE} \n\
    	█▄▄▄ █  █      █    █  █ █▀▄█ █ ▄▄ ${GREEN}  ▄   ▄▀  ${BLUE} \n\
    	▄▄▄█ █▄▄█ ▄▄▄▄ █▄▄▄ █▄▄█ █  █ █▄▄█ ${GREEN}   ▀▄▀    ${GREEN} \n\
		▄   ▄ ▄▄▄▄ ▄▄▄▄   ▄▄▄▄ ▄▄▄▄ ▄   ▄ ▄▄▄▄ ▄ ▄    ▄▄▄▄ ▄▄▄  \n\
		█   █ █  █ █▄▄▄   █    █  █ █▀▄▀█ █  █ █ █    █▄▄▄ █  █ \n\
		▀▄▀▄▀ █▀▀█ ▄▄▄█   █▄▄▄ █▄▄█ █   █ █▀▀▀ █ █▄▄▄ █▄▄▄ █▄▄▀ \${BLUE} "
		@echo "${GREEN}   						∘ ${WHITE}by ${BOLD}adamarqu${GREEN} ∘$(DEF_COLOR)\n"
		@echo

bonus:			${LIBFT} ${NAME_BONUS}

${NAME_BONUS}:		
				@${CC} ${SRCS_BONUS} ${LIBFT} ${STANDARD_FLAGS} ${MINILIBX_FLAGS} -o ${NAME_BONUS}
				@echo "\${BLUE}                                                            \n\
    	▄▄▄▄ ▄▄▄▄      ▄    ▄▄▄▄ ▄  ▄ ▄▄▄▄ ${ORANGE} ▄▄▄  ▄▄▄▄ ▄  ▄ ▄  ▄ ▄▄▄▄ ${BLUE} \n\
    	█▄▄▄ █  █      █    █  █ █▀▄█ █ ▄▄ ${ORANGE} █▄▄▀ █  █ █▀▄█ █  █ █▄▄▄ ${BLUE} \n\
    	▄▄▄█ █▄▄█ ▄▄▄▄ █▄▄▄ █▄▄█ █  █ █▄▄█ ${ORANGE} █▄▄▀ █▄▄█ █  █ █▄▄█ ▄▄▄█ ${GREEN} \n\
		▄   ▄ ▄▄▄▄ ▄▄▄▄   ▄▄▄▄ ▄▄▄▄ ▄   ▄ ▄▄▄▄ ▄ ▄    ▄▄▄▄ ▄▄▄ ${GREEN}        ▄  \n\
		█   █ █  █ █▄▄▄   █    █  █ █▀▄▀█ █  █ █ █    █▄▄▄ █  █${GREEN}  ▄   ▄▀   \n\
		▀▄▀▄▀ █▀▀█ ▄▄▄█   █▄▄▄ █▄▄█ █   █ █▀▀▀ █ █▄▄▄ █▄▄▄ █▄▄▀${GREEN}   ▀▄▀     \${BLUE} "
		@echo "${GREEN}   							∘ ${WHITE}by ${BOLD}adamarqu${GREEN} ∘$(DEF_COLOR)\n"
		@echo

${LIBFT}:
				@echo
				make bonus -C libraries/libft

clean:
				@make clean -C libraries/libft > /dev/null 2>&1
				@echo  "\${GREEN}                                                            \n\
   	▄▄▄▄ ▄    ▄▄▄▄ ▄▄▄▄ ▄  ▄ ▄▄▄▄ ▄▄▄        ▄ \n\
   	█    █    █▄▄  █▄▄█ █▀▄█ █▄▄  █  █     ▄▀  \n\
   	█▄▄▄ █▄▄▄ █▄▄▄ █  █ █  █ █▄▄▄ █▄▄▀  ▀▄▀    \${BLUE} "
	@echo "${GREEN}        ∘ ${WHITE}All objects cleaned successfully ${GREEN}∘$(DEF_COLOR)\n"
	@echo

fclean:
				@${RM} ${NAME} ${NAME_BONUS}
				@echo  "\${GREEN}                                                            \n\
   	▄▄▄▄ ▄    ▄▄▄▄ ▄▄▄▄ ▄  ▄ ▄▄▄▄ ▄▄▄        ▄ \n\
   	█    █    █▄▄  █▄▄█ █▀▄█ █▄▄  █  █     ▄▀  \n\
   	█▄▄▄ █▄▄▄ █▄▄▄ █  █ █  █ █▄▄▄ █▄▄▀  ▀▄▀    \${BLUE} "
	@echo "${GREEN}        ∘ ${BLUE}${NAME}${WHITE} and ${BLUE}${NAME_BONUS}${WHITE} were deleted ${GREEN}∘${RESET}"
	@echo

re:				fclean all

rebonus:		fclean ${NAME_BONUS}

run:			${NAME}
				${VALGRIND} ./${NAME} maps/mandatory/valid/small.ber

run_bonus:		${NAME_BONUS}
				${VALGRIND} ./${NAME_BONUS} maps/bonus/valid/mapbonus.ber

.PHONY:			all clean fclean re rebonus valgrind run run_bonus
