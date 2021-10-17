main.o:
	gcc main.c -O3 -s -Wall -Wextra -o snake
	./snake

debug:
	clang main.c -O3 -s -Wall -Wextra -o snake -g
	-valgrind --dsymutil=yes --track-origins=yes --leak-check=full ./snake

compile:
	gcc main.c -O3 -s -Wall -Wextra -o snake
