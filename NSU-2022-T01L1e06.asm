asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r2, c
ld r2, r2
ldi r3, c
ld r3, r3

add r3, r3 # процесс умножения числа с в 3 раза
add r2, r3

ldi r1, a # записываю а в регистр r1
ld r1, r1 
ldi r2, b # записываю b в регистр r2
ld r2, r2 

shla r2 # умножаю b в 2 раза
add r2, r1 # прибавляю r2(b) к r1(a)

clr r2 # очистить r2
ldi r2, 7 # записываю 7 в r2
add r3, r2 # прибавляю r3 к r2
sub r1, r2 # отнимаю r1 от r2

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
# (different bit-strings placed at addresses a, b and c)
# ---------------------------------------------------------------------

INPUTS>
a:    dc  2       # replace 0 by your choice of integer for testing
b:    dc  2       # replace 0 by your choice of integer for testing
c:    dc  4       # replace 0 by your choice of integer for testing
ENDINPUTS>

res: ds 1        # one byte reserved for the result
	end
	