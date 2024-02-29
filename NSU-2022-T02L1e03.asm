asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
#gt >
#ge >=
#lt <
#le <=
#eq =
#ne != (не равно)
ldi r1, a #загружаем переменные в соответствие с заданием
ld r1, r1
ldi r2, b
ld r2, r2
ldi r3, x #для начала загружаем только х в r3
ld r3, r3
ldi r0, ans
#(a < b)
if 
	cmp r2, r1 #если r2 больше r1 
is gt	#больше
	st r0, r3 #тогда выводим х
	halt
else
	ldi r3, y #иначе перезаписываем переменную у в 3
	ld r3, r3
fi
#(a = b)
if 
	cmp r1, r2 #если r1 равно r2 
is eq	#равно
	st r0, r3 #тогда выводим у
	halt
else
	ldi r3, z #иначе перезаписываем переменную z в 3
	ld r3, r3
fi
#(a > b)
if 
	cmp r1, r2 #если r1 больше r2 
is gt	#больше
	st r0, r3 #тогда выводим z
	halt
else
	halt #других вариантов нет :(
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
# (different integers placed at addresses a, b, x, y and z)
# ---------------------------------------------------------------------

INPUTS>
a:    dc 2    # replace these five numbers
b:    dc 1     # by your choice of integers
x:    dc 5     # for testing purposes
y:    dc 3
z:    dc 7
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

