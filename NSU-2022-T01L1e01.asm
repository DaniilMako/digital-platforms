asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1, a
ld r1, r1
ldi r2, b
ld r2, r2
ldi r3, c
ld r3, r3

add r1, r2
add r2, r3
inc r3
inc r3
inc r3

ldi r1, res
st r1, r3

# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses a, b and c)
# ---------------------------------------------------------------------

INPUTS>
a:  dc  0    # replace 0 by your choice of integer for testing
b:  dc  0    # replace 0 by your choice of integer for testing
c:  dc  0    # replace 0 by your choice of integer for testing
ENDINPUTS>

res:	ds	1		# one byte reserved for the result
	end
