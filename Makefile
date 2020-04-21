# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dberger <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/24 14:43:37 by dberger           #+#    #+#              #
#    Updated: 2019/12/05 18:38:40 by dberger          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NO_COLOR = \033[0m
YELLOW = \033[33m
GREEN = \033[32m
BLUE = \033[36m
PINK = \033[35m

NAME = gnl
NAME_DISP = display
CC = gcc
CFLAGS = -Wall -Wextra -Werror
HFILE = ./get_next_line.h

LIBC = libft

NAME_LIBC = libft.a

SRC = get_next_line.c \
	main_example.c

OBJ = $(patsubst src/%.c,$(OBJ_DIR)/%.o,$(SRC))

LIB = $(LIBC)/$(NAME_LIBC)

.PHONY: all clean fclean re

all: $(NAME)

$(OBJ_DIR):
		mkdir $(OBJ_DIR)

$(LIB): FORCE
	$(MAKE) -C $(LIBC)

$(NAME): $(LIB) $(OBJ) Makefile $(HFILE)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ) $(LIBC)/$(NAME_LIBC)
	echo "$(YELLOW)	--- $(GREEN)gnl$(YELLOW) Compiled ! ---	$(NO_COLOR)"

$(OBJ_DIR)/%.o:src/%.c $(HFILE)
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	$(MAKE) $@ -C $(LIBC)
	echo "$(BLUE)	--- Binary deleted ! ---	$(NO_COLOR)"

fclean: clean
	$(MAKE) $@ -C $(LIBC)
	rm -rf $(NAME)
	echo "$(PINK)	--- Programm deleted ! ---	$(NO_COLOR)"

re: fclean all

FORCE:
.SILENT:
