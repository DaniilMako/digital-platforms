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

shla r2 # умножаю b в 2 раза
add r2, r1 # прибавляю b к a и записываю в а

ldi r2, d # перезаписываю r2 для d
ld r2, r2

add r3, r2 # прибавляю r3 к r2
sub r1, r2 # отнимаю r1 от r2 и записываю результат в r2

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
# (different bit-strings placed at addresses a, b c and d)
# ---------------------------------------------------------------------

INPUTS>
a:  dc  5       # replace 0 by your choice of integer for testing
b:  dc  5       # replace 0 by your choice of integer for testing
c:  dc  3       # replace 0 by your choice of integer for testing
d:  dc  4       # replace 0 by your choice of integer for testing
ENDINPUTS>

res: ds 1        # one byte reserved for the result
	end
	