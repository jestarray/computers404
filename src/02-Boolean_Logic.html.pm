#lang pollen
@h1{Boolean Logic}

@(yt "QrAH93HFDqs")

Languages need to convey movement and action

@ul{
  @li{In English we have verbs(fight, run, attack, defend)}
  @li{In Math we have +-*/, which move numbers}
  @li{And in binary we have boolean operations}
}

@(layout-spread-row 
@(table 
    (table-headings (list "INPUT" "OUTPUT"))
(table-entries 
(list "0" "1")
(list "1" "0")
) #:caption (list "NOT(-)" (p-img "/images/not_gate.png")))

@(table 
    (table-headings (list "A" "B" "OUTPUT"))
(table-entries 
(list "0" "0" "0")
(list "0" "1" "1")
(list "1" "0" "1")
(list "1" "1" "1")
) #:caption (list "NOT(+)" (p-img "/images/or_gate.png")))

@(table 
    (table-headings (list "A" "B" "OUTPUT"))
(table-entries 
(list "0" "0" "0")
(list "0" "1" "0")
(list "1" "0" "0")
(list "1" "1" "1")
) #:caption (list "AND(*)" (p-img "/images/and_gate.png"))))

Boolean operations re-use symbols from math, and work almost the same. The important thing you have to remember is in the case of 1 +(or) 1 , it's not 2. Why? Because although the boolean operation "OR" almost behaves like addition, we aren't doing addition, and it helps to say it out loud: 1 OR 1, whenever you see the addition symbol(+). For the AND operation though, it behaves exactly like regular multiplication, but saying out loud "AND" might help you reason with when we combine these operations together. Speaking of which, let's start combining some together.

@steps{
    @step{Evaluate the inner parentheses and work your way outwards
    Problem:
    @pre{!(0 + (1 + 1))}
    Solution:
    @pre{!(0 + 1)}
    @pre{!(1)}
    @pre{0}

    Answer: 0
    }
}

@h2{Check your understanding!}
@q{Evaluate 1 * (0 + !(1))
    @pre{1 * (0 + !(1))}
    @pre{1 * (0 + 0)}
    @pre{1 * 0}
    @pre{0}
}

@q{Evaluate ((1 + 1) * (1 + 0)) + !(1 + 1)
    @pre{((1) * (1)) + !(1)}
    @pre{(1) + 0}
    @pre{1}
}

@hr{}
@sub-heading{Boolean Functions}
Abstracting to using functions instead of conrete values, since we're dealing with binary values, we have the luxury of knowing every possible income and outcome of a boolean function. Take for example the boolean function:

@code{f(x, y, z) = (x * y) + (!(x) * z)}

@(table 
    (table-headings (list "x" "y" "z" "f (x, y, z)"))
(table-entries 
(list 0	0	0	0)
(list 0	0	1	1)
(list 0	1	0	0)
(list 0	1	1	1)
(list 1	0	0	0)
(list 1	0	1	0)
(list 1	1	0	1)
(list 1	1	1	1)
))

For 3 binary inputs, there are only 8 possible patterns, so we can write a table for every possible input, and evaluate the function to get the output. This table is called a "truth table". It's pretty straight forward to go from a function to -> a truth table, we just run through all the inputs and write all the outputs, but what about the other way around? Going from truth table to -> function is what you're going to be tasked with doing for the entire course. You're going to be given a truth table, and for that truth table, you are going to need to find the combination of operations that fit the truth table, and it's almost like a puzzle game really. Let's explore WHY we are doing this in the first place.

@hr{}
@sub-heading{Simulating Behavior}

Say you're throwing a party, and you only want pizzas that have both mushrooms
AND pepperoni, OR ones that only mushrooms, OR ones that are plain with no
toppings. This can be summed up in a truth table of 2 inputs.

@(table 
    (table-headings (list "Mush" "Pep" "OUT" ))
(table-entries 
(list 0	0 1)
(list 0	1 0)
(list 1	0 1)
(list 1	1 1)
))

To find the combination of operations that will allow the pizzas you want to pass, while rejecting ones you don't want, all you have to do is:

@steps{
    @step{
        Look at all the patterns that OUTputs 1
        The first, 3rd, and 4th row in the table above
        @(table 
        (table-headings (list "Mush" "Pep" "OUT" ))
        (table-entries 
        (list 0	0 1)
        (list 1	0 1)
        (list 1	1 1)
        ))
    }
    @step{
        Run a NOT operation on the 0's in those patterns then AND them together

            @(table 
            (table-headings 
            (list "Mush" "Pep" "OUT" "Func"))
            (table-entries 
            (list 0 0 1 "( !M * !P )")
            (list 1	0 1 "( M * !P )")
            (list 1	1 1 "( M * P )")
            ))
    }
    @step{
        Then OR all of the different patterns together
        Answer: @(pre
    "f(m,p) = (!M * !P) + (M * !P) + (M * P)"
)
    }
}

@;img[#:src "/images/pizza_gates.png"]{}
@(pre
    "f(m,p) = (!M * !P) + (M * !P) + (M * P)"
)

This is what it looks like visually when we implement the function with logic gates and you can play with it @a[#:href "https://circuitverse.org/users/14630/projects/45415"]{here} by clicking the input boxes. This perfectly implements our truth table that filters out pizzas that we don't want. Thinking more generally, this is how computers make decisions without brains, using only binary logic. Everything you do on a computer, from playing video games, to watching movies, shopping, banking, etc, all of it boils down to combinations of these logic gates simulating behavior. It really takes some practice to get all this, and you can easily practice by arbitarily picking random outputs of 1. Here are a few practice problems if you can't come up with any:

@(layout-spread-row
@(table 
    (table-headings 
    (list "x" "y" "OUT"))
    (table-entries 
    (list 0 0 0)
    (list 0	1 1)
    (list 1	0 0)
    (list 1	1 1)
    ))

@(table 
    (table-headings 
    (list "x" "y" "OUT"))
    (table-entries 
    (list 0 0 1)
    (list 0	1 1)
    (list 1	0 1)
    (list 1	1 0)
    ))
)
It's really important that you guys get used to going from a truth table to a function because this underlies the rest of the entire course material. You're going to be writing a textual representation of this but if you get lost or confused, you can always play with a visual simulation online.

https://circuitverse.org/simulator http://nandgame.com/