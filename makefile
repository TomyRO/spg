LDFLAGS = -lGLEW -lGL -lGLU -lglfw

CC=g++
CFLAGS = -Wall -std=c++11
RM = rm
PROJ = particle
# add here additional object files
OBJS = common/controls.o common/shader.o common/texture.o particle.o

all: $(PROJ)

$(PROJ): $(OBJS)
	$(CC) $(LIBPATH) -o $@ $(OBJS) $(LDFLAGS)

%.o: %.c
	$(CC) $(INCPATH) $(CFLAGS) -c $*.c

%.o: %.cpp
	$(CC) $(INCPATH) $(CFLAGS) -c $*.cpp

clean:
	$(RM) *.o
	$(RM) $(PROJ)
