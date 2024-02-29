asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1, a #работаем только с одной переменной - а
ld r1, r1
ldi r2, 0 #для начала загружаем 0
ldi r0, ans #заранее определяем для ответа регистр 

#(a = 0)
if 
	cmp r1, r2 #если r1 равен 0
is eq
	ldi r2, x #тогда загружаем в r2 х
	ld r2, r2
	neg r2 #и прибавляем к r2 минус
	st r0, r2 #сохраняем
	halt
else 
	ldi r2, 1 #иначе в r2 загружаем 1 
fi
#(a = 1)
if 
	cmp r1, r2 #если r1 равен 1
is eq
	ldi r2, x #тогда загружаем в r2 х
	ld r2, r2
	ldi r3, y #и загружаем в r3 y
	ld r3, r3
	add r2, r3 #складываем х и у
	ldi r0, ans
	st r0, r3
	halt
else 
	ldi r2, 2 #иначе в r2 загружаем 2
fi
#(a = 2)
if 
	cmp r1, r2 #если r1 равен 2
is eq
	ldi r2, y #тогда загружаем в r2 y
	ld r2, r2
	ldi r3, z #и загружаем в r3 z
	ld r3, r3
	sub r2, r3 #из у вычитаем z
	ldi r0, ans
	st r0, r3
	halt
fi


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    #ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses a, x, y and z)
# ---------------------------------------------------------------------

INPUTS>
a:    dc 2   # replace these three numbers
x:    dc 5     # by your choice of integers
y:    dc 3     #  for testing purposes
z:    dc 7
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

