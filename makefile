all: image image_omp image_pthread

image_pthread: image_pthread.c image.h
	gcc -g image_pthread.c -o image_pthread -lm -lpthread
image_omp:image_omp.c image.h
	gcc -g -fopenmp image_omp.c -o image_omp -lm
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image image_omp image_pthread  output.png
