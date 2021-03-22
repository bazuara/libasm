# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 12:35:19 by bazuara           #+#    #+#              #
#    Updated: 2021/03/22 09:40:59 by bazuara          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm

# Lib path
LIBFT_FOLDER = ./libft/
LIBFT = $(LIBFT_FOLDER)libft.a
LIBFT_INC = $(LIBFT_FOLDER)incs/

# Source files
SOURCE_FOLDER = src/
SOURCE_FILES = main.c

SOURCE = $(addprefix $(SOURCE_FOLDER), $(SOURCE_FILES))

# Header files
HEADER_FOLDER = incs\
HEADER_FILES = \

HEADERS = $(addprefix $(HEADER_FOLDER), $(HEADER_FILES))

# Flags and output
CFLAGS = -Wall -Wextra -Werror
OFLAGS = -o

all:	$(NAME)

# Rule to build your object files and link them into a binary
$(NAME):
	@git submodule update
	@make -C $(LIBFT_FOLDER)
	@gcc $(SOURCE) -I$(LIBFT_INC) -o $(NAME)

# Rule to remove object files
clean:
	@make clean -C $(LIBFT_FOLDER)

# Rule to remove binary, calls the 'clean' rule first
fclean: clean
	@make fclean -C $(LIBFT_FOLDER)
	@rm -f $(NAME)
	@echo "Deleted binary $(NAME)"

# Rule to remove object files and binary, then re-build everything
re:	fclean all

# Rule to test norminette
normi:	
	@norminette $(SOURCE) $(HEADERS)

# Rule to debug, include norminette and similars
test: fclean
	./$(NAME)
