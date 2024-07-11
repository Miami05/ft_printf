# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldurmish <ldurmish@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/02 11:52:20 by ldurmish          #+#    #+#              #
#    Updated: 2024/07/08 13:21:08 by ldurmish         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror  

INCLUDE = -I ./libft

SRCS = ft_handle_char.c ft_handle_hex.c ft_handle_percentage.c \
		ft_handle_ptr.c ft_handle_string.c check_error.c \
		ft_handling_padding.c ft_init_print.c \
		ft_print_width.c ft_printf.c ft_putnbr.c 

OBJS = $(SRCS:.c=.o)

LIBFT = ./libft
LIBFT_LIB = $(LIBFT)/libft.a


bonus: all

all: $(NAME)

$(LIBFT_LIB):
	make -C $(LIBFT)
	
$(NAME): $(OBJS) $(LIBFT_LIB)
	cp $(LIBFT_LIB) $(NAME)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ $(INCLUDE)

clean:
	$(MAKE) -C $(LIBFT) clean
	rm -f $(OBJS)

fclean: clean
	$(MAKE) -C $(LIBFT) fclean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
