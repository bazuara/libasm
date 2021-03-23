# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 12:35:19 by bazuara           #+#    #+#              #
#    Updated: 2021/03/23 09:39:42 by bazuara          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm

# Source files
SOURCE_FOLDER = src/
SOURCE_FILES = ft_strlen.s
TEST_FILES = main.c

SOURCE = $(addprefix $(SOURCE_FOLDER), $(SOURCE_FILES))

# Objects

OBJECTS_C = $(TEST_FILES:.c=.o)
OBJECTS_S = $(SOURCE_FILES:.s=.o)

# Header files
HEADER_FOLDER = incs\
HEADER_FILES = 

HEADERS = $(addprefix $(HEADER_FOLDER), $(HEADER_FILES))

# Flags and output
CFLAGS = -Wall -Wextra -Werror
OFLAGS = -o

all:	$(NAME)

# Rule to build your object files and link them into a binary
$(NAME):
	gcc $(SOURCE) -I$(HEADER_FOLDER) -o $(NAME)

# Rule to remove object files
clean:
	@echo $(OBJECTS_S)
	@echo $(OBJECTS_C)

# Rule to remove binary, calls the 'clean' rule first
fclean: clean
	@make fclean -C $(LIBFT_FOLDER)
	@rm -f $(NAME)
	@echo "Deleted binary $(NAME)"

# Rule to remove object files and binary, then re-build everything
re:	fclean all

# Rule to debug, include norminette and similars
test: fclean
	./$(NAME)
