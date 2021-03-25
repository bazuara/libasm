# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 12:35:19 by bazuara           #+#    #+#              #
#    Updated: 2021/03/24 11:21:00 by bazuara          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm.a

# Source files
SOURCE_FOLDER = src/
SOURCE_FILES = ft_strlen.s \
			   ft_strcpy.s \
			   ft_strcmp.s

TEST_FILE = src/main.c

SOURCE = $(addprefix $(SOURCE_FOLDER), $(SOURCE_FILES))

# Objects

OBJECTS_C = $(TEST_FILES:.c=.o)
OBJECTS_S = $(SOURCE:.s=.o)

# Header files
HEADER_FOLDER = includes

HEADERS = $(addprefix $(HEADER_FOLDER), $(HEADER_FILES))

# Flags and output
CFLAGS = -Wall -Wextra -Werror
OFLAGS = -o

all:	$(NAME)

# Rule to build your object files and link them into a binary
$(NAME):
	@echo "Compiling asm to obj..."
#	$(foreach file, $(SOURCE), nasm -f macho64 $(file))
	@for file in $(SOURCE); \
		do echo Compiling $$file; \
			nasm -f macho64 $$file; \
		done
	@echo "Compiling library..."
	@ar rcs $(NAME) $(OBJECTS_S)

# Rule to remove object files
clean:
	@rm -f $(OBJECTS_S)
	@rm -f $(OBJECTS_C)
	@echo "Deleted all objs"

# Rule to remove binary, calls the 'clean' rule first
fclean: clean
	@rm -f $(NAME)
	@echo "Deleted library $(NAME)"

# Rule to remove object files and binary, then re-build everything
re:	fclean all

# Rule to debug, include norminette and similars
test: re
	@echo "Compiling test binary"
	@gcc -I$(HEADER_FOLDER) -L. -lasm $(TEST_FILE) -o test
	@echo "Runing test program"
	@./test
	@rm -f test
