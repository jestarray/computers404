#lang pollen
@h1{Binary Addition}

@sub-heading{How to add binary numbers?}

@h3{All 5 possible scenarios of binary addition:}

@(img-row "/images/bin-1.svg" "/images/bin-2.svg" "/images/bin-3.svg" "/images/bin-4.svg" "/images/bin-5.svg")
    
You add binary numbers the same as you would regular decimal numbers! In a decimal system, we carry to the left whenever we go above 9. In a binary system we carry when we go above 2 as highlighted in red.

To make sense of why 1 + 1 + 1 = 11, imagine 5 + 5 + 5. We add the two fives: 5 + 5 = 10 and we have to carry over the 1 but we still have a 5 left over, leaving us with 15.

Let's add 4 bit binary numbers 0111 + 1110. 

@steps{
    @step{
        Start from right to left (<--)
        @(pre "
  0 1 1 1 (7)
+ 1 1 1 0 (14)
__________
        1
        ")
    }
    @step{Add normally and carry as needed
@(layout-spread-row
@(pre "
    1 <- carry 
  0 1 1 1 (7)
+ 1 1 1 0 (14)
__________
      0 1 ")
@(pre "
  1 1 <- carry 
  0 1 1 1 (7)
+ 1 1 1 0 (14)
__________
    1 0 1  ")
@(pre "
1 1 1 <- carry 
  0 1 1 1 (7)
+ 1 1 1 0 (14)
__________
1 0 1 0 1 (21) ")
)
    }
    @step{
       Consider effect of overflow 
              @(pre "
 1 1 1 <- carries 
  [0 1 1 1] (7)
+ [1 1 1 0] (14)
_______
 1[0 1 0 1] (21) or (5 if overflow is dropped)
        ")
        The answer can be either 0101 or 10101

        Recall that computers have finite limits to what they can represent as noted by the [] indicating a fixed width. 4 bits can only represent a maximum number of 16 things(starting from 0), and here, the sum of the two numbers go over 15! The overflow bit may be dropped if we can't expand the bit-width, resulting in 5 as our answer. This property will be important later.
    }
}

@h3{Check your understanding!}
@(q "What is 101 + 001 ?" @(pre "
    1
  1 0 1 (5)
+ 0 0 1 (1)
________
  1 1 0 (6)
"))

@(q "What is 111 + 111 ?" @(pre "
1 1 1
  1 1 1 (7)
+ 1 1 1 (7)
________
1 1 1 0 (14) or (6)
"))
@hr{}
@sub-heading{Signed Numbers Two's Complement}
Signed numbers are numbers that can be @b{negative} values. It's called @b{signed} because it can take on a "negative sign". To get the binary representation of a negative number, say -6, we have to:

@steps{
  @step{
    Write the number positively in binary
    @(deci->bin-table 6 4 #:caption "6 in binary")
  }
  @step{
    Flip all the bits
    @pre{
      0 1 1 0 (6)
      _______
      1 0 0 1 (FLIPPED)
    }
  }
  @step{Add one to the flipped result
@(layout-spread-row
  @(pre
    "     
          1
      1 0 0 1 
    + 0 0 0 1
    _________
            0
    "
    )
  @(pre
    "     
          1
      1 0 0 1
    + 0 0 0 1
    _________
      1 0 1 0 (-6)
    "
    )
)
Answer: -6 in binary is 1010.
  }
}

This notation of representing negative numbers is called @b{two's complement}.

-6 in binary is 1010, but wait...

10(ten) in binary is also 1010? What gives?!

Consider the possibilities of unsigned and signed 4 bit numbers:

@(layout-spread-row @(max-unsigned-limit-table 4) @(max-signed-limit-table 4))

As highlighted in red, the most significant bit(left most bit) in a signed number @(2^ "n")-1 takes on a @b{negative weight}

@(layout-spread-row
@(deci->bin-table -6 4 #:caption "-8 + 2 = -6 (signed)")
@(deci->bin-table 10 4 #:caption "8 + 2 = 10 (unsigned)")
)

When representing negative numbers, @b{the width matters}, because only the most signifncant bit(left most as highlighted in red) holds the negative weight needed to split the positive and negative numbers as seen in the table. It's important to notice that all negative numbers have a leading bit of 1.

If we want  to represent -14, it's only possible in bit-width of 5 and above. Lets see this in action:

@more-examples{
  @h4{Step 1: Write the number positively in binary}
  @(deci->bin-table 14 4 #:caption "14 in binary")
  @h4{Step 2: Flip all the bits}
  @pre{
    1110
    FLIP
    0001}
  @h4{Step 3: Add one to the flipped result}
  @pre{
@(layout-spread-row
  @(pre
    "     
          1
      0 0 0 1 
    + 0 0 0 1
    _________
            0
    "
    )
  @(pre
    "     
          1
      0 0 0 1
    + 0 0 0 1
    _________
      0 0 1 0 (2)
    "
    )
)
  }
  I mistakenly did this in a 4 bit width, and got the wrong answer of 2. Consulting the table above, -14 doesn't fit in a bit width of 4. Again! You must always consider the width when dealing with negative numbers. Extend the width to 5 bits and re-doing the steps above will work: 
  @(deci->bin-table 14 5 #:caption "0 + 8 + 4 + 2 + 0 = 14")
  You should end up with:
  @(deci->bin-table -14 5 #:caption "-16 + 0 + 0 + 2 + 1 = -14")
}

@h3{Check your understanding!}
@(q "What is -3 an binary?" @(deci->bin-table -3 4 #:caption "-8 + 4 + 0 + 1 = -3"))
@(q "What is -15  an binary?" @(deci->bin-table -15 5 #:caption "-16 + 0 + 0 + 0 + 0 + 1 = -15"))
@(q "What is -20 an binary?" @(deci->bin-table -20 6 #:caption "-32 + 0 + 8 + 4 + 0 + 0 = -20"))

@hr{}
@sub-heading{How to subtract binary numbers?}

@pre{x + y = x + -y}

Subtraction is just addition with negative numbers! To put it shortly, if you already know how to add two binary numbers, you know how to subtract. 
In decimal for example:
@pre{
12 - 4 = 12 + -4
8 = 8
}

Now let's do this in binary.

@steps{
  @step{Subtracting via adding negative binary numbers
  @(layout-spread-row
    @(deci->bin-table 12 4 #:caption "12 in binary") @(deci->bin-table -4 4 #:caption "-4 in binary")
  )
  @(pre "
   1   1
     [ 1 1 0 0 ] (12)
  +  [ 1 1 0 0 ] (-4)
  _______________
   1 [ 1 0 0 0 ] (8)
   ^ overflow is ignored because it can't fit inside the bit width
  ")
  resulting in:
  @(deci->bin-table 8 4 #:caption "8 in binary")
  Due to tossing away the overflow, we get 1000, which is 8 in decimal and is the correct answer to 12 - 4.
  }
}

New hardware is not required for subtraction, we just re-use what we do in addition!

@(q
"How does the computer tell apart signed and unsigned numbers?"
"It doesn't! We manaully tell the computer by declaring the type signed or unsigned. In scripting languages like Python, Javascript, etc, this is hidden from you by way of having all numbers be signed by default. In other languages like C, you have to declare a number to be signed or unsigned, which will flip a switch on the CPU that tells it to interpret a binary number to be negative by considering the left most bit to have a negative weight."
)

@more-examples{
  @(pre "
   Example: -8 + 3 = -5

     [ 1 0 0 0 ] (-8)
  +  [ 0 0 1 1 ] (3)
  _______________
     [ 1 0 1 1 ] (-5)
   

   Example: -6 + -1 = -7
   
   1   1 1
     [ 1 0 1 0 ] (-6)
  +  [ 1 1 1 1 ] (-1)
  _______________
   1 [ 1 0 0 1 ] (-7)
  ")
}

@h3{Check your understanding!}
@(q "Convert these numbers to binary and add them: -5 + 4" 
@(pre "
     [ 1 0 1 1 ] (-5)
  +  [ 0 1 0 0 ] (4)
  _______________
     [ 1 1 1 1 ] (-1)
"))
@(q "Convert these numbers to binary and add them: 7 + -7" 
@(pre "
   1   1 1 1 
     [ 0 1 1 1 ] (7)
  +  [ 1 0 0 1 ] (-7)
  _______________
   1 [ 0 0 0 0 ] (0)
")
)
@(q "Convert these numbers to binary and add them: -8 + -8" 
"We have to up to a 5 bit or more system because -8 + -8 = -16, which does not fit into a 4 bits"
@(deci->bin-table -8 5 #:caption "-8 in 5bit binary")
@(pre "
   1   1     
     [ 1 1 0 0 0 ] (-8)
  +  [ 1 1 0 0 0 ] (-8)
  _______________
   1 [ 1 0 0 0 0 ] (-16)
")
)