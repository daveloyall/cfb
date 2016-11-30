CC=gcc

all: fbwrite hellox


fbwrite: fbwrite.c
	$(CC) $(CFLAGS) $^ -o fbwrite.elf

hellox: hellox.c
	$(CC) $(CFLAGS) $^ -lX11 -o hellox.elf

run-hellox: hellox
	./hellox.elf

clean:
	rm -f fbwrite.elf hellox.elf
