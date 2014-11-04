CC	= g++ -std=c++11
CFLAGS 	= -c -Wall
LDFLAGS = -lavcodec -lavformat -lavutil -lz -lm -laubio
SRCS	= $(wildcard src/*.cc)
OBJS	= $(SRCS:.cc=.o)
BIN	= MusicEmotionRecognition

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