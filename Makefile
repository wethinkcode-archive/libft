# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pmalope <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/21 15:25:45 by pmalope           #+#    #+#              #
#    Updated: 2019/06/05 10:38:04 by pmalope          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

SRC = ft_tolower.c \
	  ft_toupper.c \
	  ft_isprint.c \
	  ft_isascii.c \
	  ft_isalnum.c \
	  ft_isdigit.c \
	  ft_isalpha.c \
	  ft_atoi.c \
	  ft_itoa.c \
	  ft_strlen.c \
	  ft_strdup.c \
	  ft_strcpy.c \
	  ft_strncpy.c \
	  ft_strcat.c \
	  ft_strncat.c \
	  ft_strlcat.c \
	  ft_strchr.c \
	  ft_strrchr.c \
	  ft_strstr.c \
	  ft_strnstr.c \
	  ft_strcmp.c \
	  ft_strncmp.c \
	  ft_memset.c \
	  ft_bzero.c \
	  ft_memcpy.c \
	  ft_memccpy.c \
	  ft_memmove.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_putnbr_fd.c \
	  ft_putchar_fd.c \
	  ft_putendl_fd.c \
	  ft_putstr_fd.c \
	  ft_putchar.c \
	  ft_putnbr.c \
	  ft_putstr.c \
	  ft_putendl.c \
	  ft_memalloc.c \
	  ft_memdel.c \
	  ft_strnew.c \
	  ft_strdel.c \
	  ft_strclr.c \
	  ft_striter.c \
	  ft_striteri.c \
	  ft_strmap.c \
	  ft_strmapi.c \
	  ft_strequ.c \
	  ft_strnequ.c \
	  ft_strsub.c \
	  ft_strjoin.c \
	  ft_strtrim.c \
	  ft_strsplit.c\
	  ft_lstnew.c \
	  ft_lstdelone.c\
	  ft_lstdel.c \
	  ft_lstadd.c \
	  ft_lstiter.c\
	  ft_lstmap.c

OBJ = $(SRC:%.c=%.o)

all: build_lib

build_lib: create_obj
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

create_obj:
	$(CC) $(FLAGS) -c $(SRC)

norm:
	norminette -R CheckForbiddenSourceHeader $(SRC) libft.h

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	rm -rf test

run:
	$(CC) $(FLAGS) $(NAME) main.c -o test
	./test

re: fclean all
