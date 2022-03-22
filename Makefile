SRC	=	unit_tests/tests.c

OBJ	=	$(SRC:.c=.o)

NAME	=	my_defender

all:	$(NAME)

$(NAME):	$(OBJ)
		gcc -g -Wall $(SRC) -o $(NAME)
		
tests_run:	all

clean:
		rm -f nothing

fclean:	clean
		rm -f $(NAME)
		rm -f libmy.a
		rm -f vgcore.*
		rm -f *.gcno
		rm -f *.gcda

re:	fclean all
