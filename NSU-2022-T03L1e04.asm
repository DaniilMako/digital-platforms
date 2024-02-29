asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0, n       #число, до которого будет заполняться и в адресе которого находится 8-битное безнаковое число N
ld r0, r0       
ldi r1, content #элементы должны быть сохранены в N ячейках памяти, начиная с адреса content
add r0, r1      #к n прибавляем content
while           #начало цикла
	tst r0      #проверка n на 0 или отрицательное число
stays gt        #пока строго больше 0
	dec r1      #от content отнимаем 1
	st r1, r0   #в content сохряняем n
	dec r0      #от n отнимаем 1
wend            #конец цикла
# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, content # Loads the address of your result into r0 for the robot
    halt            # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
n:       dc 6   # replace this with your choice of unsigned number for testing
ENDINPUTS>

content: ds 15  # 15 bytes reserved for the content of the array #здесь указываем длину массива
end

