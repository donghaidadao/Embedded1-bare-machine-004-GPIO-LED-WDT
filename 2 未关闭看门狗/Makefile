temp: test.S delay.S
	arm-linux-gcc -g -c -o temp1.o test.S
	arm-linux-gcc -g -c -o temp2.o delay.S
	arm-linux-ld -Ttext 0x00000000 -g temp1.o temp2.o -o temp_elf
	arm-linux-objcopy -O binary -S temp_elf run.bin

clean:
	rm -f temp
	rm -f temp.o
	rm -f temp_elf