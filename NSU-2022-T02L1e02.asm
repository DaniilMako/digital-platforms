asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1, a  # загружаем переменные a, b, c
ld r1, r1
ldi r2, b
ld r2, r2
ldi r3, c
ld r3, r3
#начинаем сравнимать #cmp - операция сравнения
if	
	cmp r1, r2  #если r1 больше r2
is ge 
	move r1, r1 #тогда ничего не меняется и просто копируем в самого себя
else
	move r2, r1 #иначе копируем значение r2 в r1
fi

if
	cmp r3, r1  #если r3 больше r1 (можно было бы сделать аналогично с предыдущем)
is ge
	move r3, r1 #тогда копируем значение r2 в r1
else
	move r1, r1 #иначе ничего не меняется и просто копируем в самого себя
fi


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, ans  # Loads the address of your result into r0 for the robot
	st r0, r1	 #сохраняем результат в r0
	halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses a, b and c)
# ---------------------------------------------------------------------

INPUTS>
a:    dc -18   # replace these three numbers
b:    dc 9     # by your choice of integers
c:    dc 5     #  for testing purposes
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

