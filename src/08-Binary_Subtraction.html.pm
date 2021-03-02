#lang pollen
@h1{Binary Subtraction}

@sub-heading{How to subtract binary numbers?}

@pre{x + y = x + -y}

Subtraction is just addition with negative numbers! To put it shortly, if you already know how to add two binary
numbers, you know how to subtract.
In decimal for example:
@pre{
12 - 4 = 12 + -4
8 = 8
}

Now let's do this in binary.

@(img-row "/images/bin-1.svg" "/images/bin-2.svg" "/images/bin-3.svg" "/images/bin-4.svg" "/images/bin-5.svg")

@steps{
@step{Subtracting via adding negative binary numbers
@(layout-spread-row
@(deci->bin-table 12 4 #:caption "12 in binary") @(deci->bin-table -4 4 #:caption "-4 in binary")
)
@(pre "
1 1
[ 1 1 0 0 ] (12)
+ [ 1 1 0 0 ] (-4)
_______________
1 [ 1 0 0 0 ] (8)
^ overflow is ignored because it can't fit inside the bit width
")
resulting in:
@(deci->bin-table 8 4 #:caption "8 in binary")
Due to tossing away the overflow, we get @(base 1000 2), which is @(base 8 10) in decimal and is the correct answer to
12 - 4.
}
}

TODO: SHOW CASE IN WHICH IT DOESN'T OVERFLOW

New hardware is not required for subtraction, we just re-use what we do in addition!

@more-examples{
@(pre "
Example: -8 + 3 = -5

[ 1 0 0 0 ] (-8)
+ [ 0 0 1 1 ] (3)
_______________
[ 1 0 1 1 ] (-5)


Example: -6 + -1 = -7

1 1 1
[ 1 0 1 0 ] (-6)
+ [ 1 1 1 1 ] (-1)
_______________
1 [ 1 0 0 1 ] (-7)
")
}

@h3{Check your understanding!}
@(q "Convert these numbers to binary and add them: -5 + 4"
@(pre "
[ 1 0 1 1 ] (-5)
+ [ 0 1 0 0 ] (4)
_______________
[ 1 1 1 1 ] (-1)
"))
@(q "Convert these numbers to binary and add them: 7 + -7"
@(pre "
1 1 1 1
[ 0 1 1 1 ] (7)
+ [ 1 0 0 1 ] (-7)
_______________
1 [ 0 0 0 0 ] (0)
")
)
@(q "Convert these numbers to binary and add them: -8 + -8"
"We have to up to a 5 bit or more system because -8 + -8 = -16, which does not fit into a 4 bits"
@(deci->bin-table -8 5 #:caption "-8 in 5bit binary")
@(pre "
1 1
[ 1 1 0 0 0 ] (-8)
+ [ 1 1 0 0 0 ] (-8)
_______________
1 [ 1 0 0 0 0 ] (-16)
")
)