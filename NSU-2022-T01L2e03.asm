asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1, a
ld r1,r1
ldi r2, b
ld r2, r2
add r1, r2
if	
	is	 hi
		ldi r0, 1
	else
		ldi r0, 0
fi
ldi r3, resHi
st r3, r0
# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, resLo  # Loads the start address of your result into r0 for the robot
	st r0, r2	
    halt           # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses aLo, aHi, bLo and bHi)
# ---------------------------------------------------------------------

INPUTS>
a:	dc	 10 		# replace 0 by your choice of low byte for testing
b:	dc	 20		# replace 0 by your choice of high byte for testing
ENDINPUTS>

resLo:  ds  1
resHi:  ds  1		# two bytes reserved for the result
end
