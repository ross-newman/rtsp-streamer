.PHONY : clean

LIBRARY_PATH=-L/usr/lib/aarch64-linux-gnu/
LIBS=-lgstrtsp-1.0 -lgstrtspserver-1.0 -lgstreamer-1.0 -lglib-2.0 -lgio-2.0 -lgmodule-2.0 -lgobject-2.0
INC=-I /usr/include/gstreamer-1.0 -I /usr/include/glib-2.0/ -I /usr/lib/aarch64-linux-gnu/glib-2.0/include -I /usr/lib/aarch64-linux-gnu/gstreamer-1.0/include

CC=gcc
CFLAGS = $(GST_OBJ_CFLAGS) -c -Wall
LDFLAGS= -Wall -Wextra -g -std=c99

all: rtsp-streamer


rtsp-streamer: rtsp-stream.o
	$(CC) $(LDFLAGS) $(LIBRARY_PATH) -o rtsp-streamer rtsp-stream.o $(LIBS)

rtsp-stream.o: rtsp-stream.c
	$(CC) $(CFLAGS) $(INC) -c rtsp-stream.c

clean:
	rm *.o
	rm rtsp-streamer

