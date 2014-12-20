CC = cc
CFLAGS = -Wall -O3 -lX11 -lm

MAIN = main.c
NAME = main

all:
	$(CC) $(MAIN) -o $(NAME) $(CFLAGS) -Du=XK_Up -Dd=XK_Down -Dl=XK_Left -Dr=XK_Right
$(OBJS):

size:
	@gcc -fpreprocessed -dD -E main.c | tr '\n' ' ' | sed 's/[ \t]//g' | wc -c
	@cat main.c | wc -c
