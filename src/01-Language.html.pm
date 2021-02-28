#lang pollen
@h1{Language}

@(yt "kg5lPrFuG4I")

We humans have pretty powerful brains to process language, like english:

@blockquote{Aoccdrnig to rscheearch at Cmabrigde uinervtisy, it deosn’t mttaer waht oredr the ltteers in a wrod are, the olny iprmoetnt tihng is taht the frist and lsat ltteres are at the rghit pclae. The rset can be a tatol mses and you can sitll raed it wouthit a porbelm. Tihs is bcuseae we do not raed ervey lteter by it slef but the wrod as a wlohe.}

Even though the passage is all jumbled, we can still make it out, however english is not optimal for animals like cats or electical circuts because they don't have the brains and vocal chords to make use of it. For electrical circuts in particular, a binary language system is used.

@hr{}
@sub-heading{Binary}

means composed of 2 things. On or off, high or low, Yes or No, True or Flase, 0 or 1, etc. Decades of research has lead us to the conclusion that a binary language system is the most efficent language system for digital circuts to implement. Let's prove this with a thought experiment!

You're 9 years old and your best friend lives right across from you. Your parents are strict and call it bed time early at 10, but you want still stay up and chat without getting caught. You find that you both have flashlights though so maybe you can work something out.

Hey, we could trace letters in the air! It kind of works but a problem is that sometimes its just hard to follow zig zaggy patterns(try drawing letters with your mouse, the trails disapear to quickly!) and sometimes its just foggy... so back to the drawing board

Second thought, you recall from a movie that sailors used blinks to talk. That's it! Following traces is hard, but counting is easy! 1 blink can be A, 2 can be B, 3 can be C and so on. All is good but you find out sending 

"how are you?"

******** *************** *********************** * ****************** ***** ************************* *************** *********************

 takes a total of 131 blinks! Just to spell letters further down the alphabet like Y, take 25 blinks! With this many blinks, its easy to miscount, it takes longer to send a message, etc, this system has lots of flaws. So you think surely someone has had this problem before, so you hit the books and find Morse code. Unlike your system which only had 1 kind of blink that you count, Morse code is made of two different kinds of blinks, a short blink, and a long blink(represented by a dash), and letters are comprised of patterns of the two. 

@img[#:src "/images/morse_code.png"]{}
 
 The bad news is that early on, you and your friend need to go through a table until you guys memorize it, but the good news is that now, saying 

"how are you?"

@pre{**** --- *-- ******* *- *-* * ******* -*-- --- **-}

 only takes a total of 32 blinks! In our counting system, it took 131, so we saved almost 100 blinks saved!

 Here are two hidden messages. 
Computers use a similar system but instead of blinks, its called bits.

@hr{}
@sub-heading{Bits}

A bit holds a value that is either 1 or a 0. Beyond what it is, let's look at what it @b{does}. A bit @b{conveys information}, granted it's a very tiny amount. 

@h2-line{What can we do with 1 bit?}

With 1 bit, we can convey only 2 possibilities. For example: 

Do you like the movie?

@(table (table-headings (list "Bit" "Information")) (table-entries (list 0 "No") (list 1 "Yes")))

To convey more complex information, we need multiple bits:

With 2 bits, we brought the combination of things we can __represent__ to a total of __4__ .
@(table (table-headings '("Bit1" "Bit2" "Information"))
(table-entries 
(list 0 0 "Bad")
(list 0 1 "Okay")
(list 0 1 "Great")
(list 0 1 "WOAHHH")
))

With 3 bits, the maximum limit of patterns we can make is 8.
@(table (table-headings '("Bit1" "Bit2" "Bit3" "Information"))
(table-entries 
(list 0 0 0 0)
(list 0 0 1 1)
(list 0 1 0 2)
(list 0 1 1 3)
(list 1 0 0 4)
(list 1 0 1 5)
(list 1 1 0 6)
(list 1 1 1 7)
))

@img[#:src "/images/calculator_error.jpeg"]{}

Notice that the number of things we can represent is @b{finite} and determined by the number of bits we have. If you've ever hit an error with calculators dealing with large numbers, chances are because it ran out of bits to represent numbers. If we built a 3 bit calculator, going over 7 will result in a crash(we include 0) because we ran out of patterns of 01s to represent the next number. 

Can you guess how many unique patterns you can make with 4 bits? 

The formula for finding the maximum limit patterns is @(2^ "n"), where n is how many bits we have. So @(2^ 4) = 16. 

We will be building a 16 bit(1970s) computer, so what is the maximum number of things? 65536
Modern computers these days are 32bits(1990s) which can represent: 4,294,967,296
and 64bits(2000s): 18,446,744,073,709,551,615 (reads 18 quintillion).

You may be wondering, a processor from the 1970s? Isn't what we learn going to be outdated and irrelevant?
No, surprisingly 99% of the underlying architecture remains the same to this day.

So in conclusion:
@ul{
    @li{
 binary is like a 2 letter alphabet system that computers use because it is a very efficent minimal language and it's very cheap and fast to mass produce technology that operates on binary values.
    }
    @li{
there is a limit to how many things computers can represent
    }
    @li{
the amount of things we can represent is determined by how many bits we have, @(2^ "n") - 1
    }
}

In the next section, we'll explore how binary can express actions!