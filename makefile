CC=gcc
FLAGS= -Wall -g

all : mains maindloop maindrec loops

mains:  main.o libclassrec.a
	gcc -Wall -g main.c -L. libclassrec.a -o mains

maindloop : main.o libclassloops.so
	gcc -Wall -fPIC main.c ./libclassloops.so -o maindloop

maindrec : main.o libclassrec.so
	gcc -Wall -fPIC main.c ./libclassrec.so -o maindrec	

loopd : libclassloops.so
recursived : libclassrec.so
recursives : libclassrec.a
loops : libclassloops.a

libclassloops.a : basicClassification.o advancedClassificationLoop.o
	ar -rcs libclassloops.a basicClassification.o advancedClassificationLoop.o

libclassrec.so : basicClassification.o advancedClassificationRecursion.o
	gcc -shared -o libclassrec.so basicClassification.o advancedClassificationRecursion.o	

libclassloops.so : basicClassification.o advancedClassificationLoop.o
	gcc -shared -o libclassloops.so basicClassification.o advancedClassificationLoop.o

libclassrec.a : basicClassification.o advancedClassificationRecursion.o
	ar -rcs libclassrec.a basicClassification.o advancedClassificationRecursion.o

basicClassification.o : basicClassification.c NumClass.h
	gcc -Wall -g -c basicClassification.c

advancedClassificationLoop.o : 	advancedClassificationLoop.c NumClass.h
	gcc -Wall -g -c advancedClassificationLoop.c

advancedClassificationRecursion.o : advancedClassificationRecursion.c NumClass.h
	gcc -Wall -g -c advancedClassificationRecursion.c

main.o : main.c NumClass.h
	gcc -Wall -g -c main.c	

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maindloop maindrec
