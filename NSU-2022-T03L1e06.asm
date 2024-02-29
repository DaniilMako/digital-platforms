asect  0x00
#счетчик положительных отрицательных чисел и нулей
# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0, length  #загружаем lenght(длина массива) в r0
ld r0, r0
ldi r1, content #загружем content(сами числа) в r1

while         #НАЧАЛО ЦИКЛА
	tst r0    #проверка r0
stays nz      #пока нет нулей или отрицательных
	ld r1, r2 #в r1 загружаем r2
	br count  #вызов функции count
change:         #функция change
	st r1, r2 #в r1 сохряняем r2
	inc r1    #увеличиваем r1 на 1
	dec r0    #уменьшаем r0 на 1 
wend          #КОНЕЦ ЦИКЛА

br finish     #вызов функции finish
count:        #функция count
push r0
#подсчет положительных чисел
if
	tst r2      #проверка r2
is gt           #строго больше
	ldi r0, pos
	ld r0, r3
	inc r3      #увеличиваем r3 на 1
	st r0, r3   #в r0 сохряняем r3
fi
#подсчет отрицательных чисел
if
	tst r2       #проверка r2
is lt            #строго меньше
	ldi r0, neg
	ld r0, r3
	inc r3       #увеличиваем r3 на 1
	st r0, r3    #в r0 сохряняем r3
fi
#подсчет нулей
if
	tst r2      #проверка r2
is z            #ноль
	ldi r0, zer
	ld r0, r3
	inc r3      #увеличиваем r3 на 1
	st r0, r3   #в r0 сохряняем r3
fi

pop r0
br change #вызов функции change

finish:
# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, pos  # Loads the start address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different arrays of numbers)
# ---------------------------------------------------------------------

INPUTS>
length:  dc 15          # the length of the array (between 1 and 10)
content: dc 2, 0, -3, 4, -9, 0, 7, 88, -92, 18, 0, 21, 0, -100, 32
ENDINPUTS>
pos: ds 1 # 1 byte each for the three result values
neg: ds 1
zer: ds 1
end

