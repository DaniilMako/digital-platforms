asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1, x #сколько раз сложить - константа
ld r1, r1
ldi r2, y #какое значение надо складывать - константа
ld r2, r2

ldi r0, 0 #count = 0
ldi r3, 0 #product = 0

while
	cmp r0, r1 #сравниваем: count < x
stays lt       #пока меньше
	add r2, r3 #складываем: product = y + product
	dec r1     #увеличиваем: count + 1
wend

ldi r0, ans
st r0, r3
halt
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
# (different unsigned numbers placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
x:     dc 1    # replace these with your choice
y:     dc 2    # of unsigned numbers for testing
ENDINPUTS>

ans:   ds 1    # one byte reserved for the (unsigned number) product

end

