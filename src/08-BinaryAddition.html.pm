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
 1[0 1 0 1] (21) or (5 if we can't expand)
        ")
        The answer can be either 0101 or 10101

        Recall that computers have finite limits to what they can represent as noted by the brackets [] indicating a fixed width. 4 bits can only represent a maximum number of 16 things(starting from 0), and here, the sum of the two numbers go over 15! The overflow bit may be dropped if we can't expand the bit-width, resulting in 5 as our answer. This property will be important later.
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
  Due to tossing away the overflow, we get @(base 1000 2), which is @(base 8 10) in decimal and is the correct answer to 12 - 4.
  }
}

TODO: SHOW CASE IN WHICH IT DOESN'T OVERFLOW

New hardware is not required for subtraction, we just re-use what we do in addition!



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