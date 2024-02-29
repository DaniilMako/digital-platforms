asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1, x #загружаем х в r1
ld r1, r1 
ldi r2, y #загружаем у в r2
ld r2, r2 
ldi r0, ans #сразу загружаем ответ(ans) в r0 

if #если  2 * y < -(3 * x)
	ldi r1, x #загружаем x в r1 
	ld r1, r1 
	ldi r3, x #для дальнейших преобразований загружаем х в r3
	ld r3, r3
	
	shla r2 #удваиваем у
	shla r1 #увеличиваем х в 3 раза
	add r3, r1
	neg r1 #делаем его негативным
	cmp r2, r1 #сравниваем
is lt #(меньше) 
	ldi r1, x #тогда заново загружаем х в r1
	ld r1, r1 
	ldi r2, y #заново загружаем у в r2
	ld r2, r2
	
	add r2, r1 #складываем у и х
	st r0, r1 #выводим ответ
	halt #прекращаем программу
else #иначе
	ldi r2, y 
	ld r2, r2
	ldi r3, z #загружаем z в r3
	ld r3, r3
	
	sub r2, r3 #вычитаем z из y и записываем ответ в r2
	st r0, r3
	halt
fi



# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
x:    dc -1    # replace these numbers by your choice
y:    dc 5     # of integers for testing purposes
z:    dc 3
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

