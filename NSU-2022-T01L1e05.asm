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

add r1, r2 # прибавляю r1 к r2 и результат записывается в r2
add r2, r3 # прибавляю r2 к r3 и результат записывается в r3

ldi r1, d # перезаписываю r1 для d
ld r1, r1
ldi r2, e # перезаписываю r2 для e
ld r2, r2

add r3, r1 # прибавляю r3 к r1 и результат записывается в r1
add r1, r2 # прибавляю r1 к r2 и результат записывается в r2

# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, res  # Loads the address of your result into r0 for the robot
	st r0, r2
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses a, b, c, d and e)
# ---------------------------------------------------------------------

INPUTS>
a:    dc  0       # replace 0 by your choice of integer for testing
b:    dc  0       # replace 0 by your choice of integer for testing
c:    dc  0       # replace 0 by your choice of integer for testing
d:    dc  0       # replace 0 by your choice of integer for testing
e:    dc  0       # replace 0 by your choice of integer for testing
ENDINPUTS>

res: ds 1        # one byte reserved for the result
	end
	