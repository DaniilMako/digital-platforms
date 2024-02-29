asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0, a
ld r0, r0
ldi r1, 0b00001111
and r0, r1  #право
ldi r3, 9
if
	cmp r1, r3
is gt
	ldi r2, "A"
	ldi r3, 10
	sub r2, r3
	move r3, r2
else
	ldi r2, "0"
fi

add r2, r1
ldi r2, res+1
st r2, r1

#сдигаем вправо
ldi r2, 4
while
	tst r2
stays nz	
	shr r0 #лево
	dec r2
wend

ldi r3, 9
if
	cmp r0, r3
is gt
	ldi r2, "A"
	ldi r3, 10
	sub r2, r3
	move r3, r2
else
	ldi r2, "0"
fi

add r2, r0
ldi r2, res
st r2, r0
# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at address a)
# ---------------------------------------------------------------------

INPUTS>
a:    dc  0b01101011   # The output for this bit-string should be "E7"
ENDINPUTS>

res:  ds 2             # Two bytes reserved for the result
end


