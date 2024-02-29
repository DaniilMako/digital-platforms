asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0, aLo
ld r0, r0
ldi r1, aHi
ld r1, r1
ldi r2, bLo
ld r2, r2
ldi r3, bHi
ld r3, r3
#Умножение на 2 
add r2, r2
addc r3, r3
#Разность чисел
sub r0, r2
if
	is hi	
#Прибавить 1 к старшему
	ldi r0, 1
	add r0, r1
fi
sub r1, r3
#при инвертировании r3 добавилась лишняя единица
ldi r0, -1
add r0, r3
#Запись результатов
ldi r0, resLo
st r0, r2
ldi r1, resHi
st r1, r3

# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    #ldi r0, resLo  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses aLo, aHi, bLo and bHi)
# ---------------------------------------------------------------------

INPUTS>
aLo:	dc	0 	# replace 0 by your choice of low byte for testing
aHi:	dc	0 	# replace 0 by your choice of high byte for testing
bLo:	dc	0 	# replace 0 by your choice of low byte for testing
bHi:	dc	0 	# replace 0 by your choice of high byte for testing
ENDINPUTS>

resLo:	ds	1
resHi:  ds  1		# two bytes reserved for the result
end


