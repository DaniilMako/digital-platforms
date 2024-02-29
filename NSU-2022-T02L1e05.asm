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
ldi r3, 5 #загружаем 5 в r3
ldi r0, ans #сразу загружаем ответ(ans) в r0 

if #если x + 5 >= y
	add r3, r1 #складываем х и 5
	cmp r1, r2 #сравниваем
is ge #(больше или равно) #тогда заново загружаем х в 1
	ldi r1, x #заново загружаем х в r1
	ld r1, r1 
	ldi r2, x #для дальнейших преобразований загружаем х в r2
	ld r2, r2
	shla r1 #увеличиваем х в 3 раза
	add r2, r1
	st r0, r1 #выводим ответ
	halt #прекращаем программу
else #иначе
	ldi r1, z #перезагружаем z в r1
	ld r1, r1
	ldi r3, 7 #перезагружаем 7 в r3
	add r3, r1 #складываем х и 7
	shla r2 #увеличиваем z в 2 раза
	sub r1, r2 #вычитаем r2 из r1 и записываем ответ в r2
	st r0, r2
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
# (different bit-strings placed at addresses x, y and z)
# ---------------------------------------------------------------------

INPUTS>
x:    dc 7    # replace these three numbers
y:    dc 12     # by your choice of integers
z:    dc 5     #  for testing purposes
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

