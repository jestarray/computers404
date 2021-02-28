#lang pollen

@h1{NAND theorem}

@(yt "RQzmQvi1tdU")

A NAND gate is made up of 1 AND gate, and 1 NOT gate to invert its output. It only outputs a 0 when both inputs are 1. The truth table looks like this:

@(table 
    (table-headings (list "A" "B" "OUT"))
(table-entries 
(list "0" "0" "1")
(list "0" "1" "1")
(list "1" "0" "1")
(list "1" "1" "0")
) #:caption (list "NAND" (p-img "/images/NAND_gate.png")))

It's known as the universal gate because it is the building block for all the other gates, like AND, NOT, OR, etc
It's so popular in fact, that it gets its own special little notation/symbol to shorten drawing it out, notice a dot at the end of an AND gate.

I know, it's a little weird, because as I just said, NAND is composed of two gates, 1 AND, 1 NOT, so why do we have to build them from a NAND gate if we already have them? Isn't it more efficent to just use the AND and NOT gates from the get go, rather than having to build them through a NAND gate? Why do we have to go through the middle man of the NAND gate?

This is an electrical engineering question that involves voltages and transistors and etc, that I'm not qualified to answer, but what I can say is that its not that efficent to cut out the NAND gate, sometimes it makes things worse, and I will link to sources below if you're curious.

For this course in particular, we're just going to focus on using the abstraction of the truth table and combing gates together, not worrying about where the logic gates come from, how they are implemented, or how efficent things are. This is the basis of "abstraction", no one needs to know mechanical engineering to drive a car, instead an interface is exposed, the steering wheel and the pedal, to just tell you what does what, so you don't need to be concerned with how every gear turns. If you're curious about the HOW, look into physics and EE.

Alright, you are to start off with a NAND gate, and work your way up to build other gates, and when you have built those other gates, you can use those to build other gates. Let's hop to the hardware simulator so you get what I mean.

The hardware simulator runs on mac windows and linux, but we have to install java, so go to this link: https://www.java.com/en/download/
click next a bunch of times.

extract the zip file of the hardware simulator and run it

visualization tools:
http://nandgame.com/
circutverse

HDL:
No loops, no conditional(if else), just plugin in variables. Case sensitive, madatory semicolons, commas, be careful for typos

internal pins

test script(you're really never going to touch the test script)
compare file

I recommend getting things working with visual tool first, then transcribe into text

 https://electronics.stackexchange.com/questions/394890/why-are-nand-gates-used-to-make-and-gates-in-computers
