#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/10 23:52:59 by porrapat          #+#    #+#              #
#    Updated: 2021/11/10 23:53:55 by porrapat         ###   ########.fr        #
#                                                                              #
#  **************************************************************************  #

NAME = bsq

SRC = srcs/main.c srcs/fonctions.c srcs/fonctions2.c srcs/ft_start.c \
	  srcs/ft_check_instructions.c srcs/ft_board.c srcs/ft_optimisations.c

all: $(NAME)

$(NAME):
		gcc -Wall -Wextra -Werror -o $(NAME) $(SRC)
clean:
		/bin/rm -f
fclean: clean
		/bin/rm -f $(NAME)
		-/bin/rm -f map_*.txt
		-/bin/rm -f result_*.txt
re: fclean all

norm:
	-norminette ./srcs# .[ch]

generator:
	./map_generator.pl 6 6 1 > map_1.txt
	./map_generator.pl 8 8 1 > map_2.txt
	./map_generator.pl 9 9 1 > map_3.txt
	./map_generator.pl 16 16 5 > map_4.txt
	./map_generator.pl 20 20 6 > map_5.txt

test: all
	./bsq map_1.txt > result_1.txt
	./bsq map_2.txt > result_2.txt
	./bsq map_3.txt > result_3.txt
	./bsq map_4.txt > result_4.txt
	./bsq map_5.txt > result_5.txt
