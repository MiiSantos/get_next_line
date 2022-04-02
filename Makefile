NAME = get_next_line
SRC = get_next_line.c get_next_line_utils.c
OBJ = $(SRC:.c=.o)
BONUSSRC = get_next_line_bonus.c get_next_line_utils_bonus.c
BONUSOBJ = $(BONUSSRC:.c=.o)
CFLAGS = -Wall -Wextra -Werror
CC = gcc

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) -D BUFFER_SIZE=42 -o $(NAME)

$(OBJ):
	$(CC) $(CFLAGS) -c $(SRC)

bonus: $(BONUSOBJ)
	$(CC) $(BONUSOBJ) $(CFLAGS) -D BUFFER_SIZE=42 -o $(NAME)

$(BONUSOBJ):
	$(CC) $(CFLAGS) -c $(BONUSSRC)

clean:
	rm -f $(OBJ)
	rm -f $(BONUSOBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:all bonus clean fclean re
