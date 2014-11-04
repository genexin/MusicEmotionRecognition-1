CC		= g++-4.9 -std=c++11
CFLAGS 	= -c -Wall
LDFLAGS = -lavcodec -lavformat -lavutil -lz -lm
SRCS	= $(wildcard src/*.cc)
OBJS	= $(SRCS:.c=.o)
BIN		= MusicEmotionRecognition
   
all: $(SRCS) $(BIN)

$(BIN): $(OBJS)
		$(CC) $(LDFLAGS) $(OBJS) -o $@

.cc.o:
		$(CC) $(CFLAGS) $< -o $@

clean:
		rm -rf $(OBJS)

fclean: clean
		rm -rf $(BIN)

re: fclean all