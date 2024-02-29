asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0, x #загружаем х в регистр 0
ld r0, r0 
ldi r1, y #загружаем у в регистр 1
ld r1, r1
ldi r2, 0 #загружаем 0 в регистр 2

move r0, r3 #копируем содержимое регистра 0 в регистр 3
while
	cmp r3, r1 #сравниваем r3 и r1
stays ge #пока больше или равно
	save r1     #сохраняем r1
	sub r3, r1  #r3 = r3 - r1
	move r1, r3 #копируем содержимое регистра 1 в регистр 3
	restore     #восстанавливаем
	inc r2      #увеличиваем регистр 2 на 1
wend
ldi r0, quot   #целая часть(частное)
st r0, r2
ldi r1, remain #остаток от деления
st r1, r3
# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    #ldi r0, quot  # Loads the address of your result into r0 for the robot
    halt          # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
x:      dc 22   # replace these with your choice
y:      dc 6    # of unsigned numbers for testing
ENDINPUTS>

quot:   ds 1    # one byte reserved for the quotient
remain: ds 1    # one byte reserved for the remainder
end

