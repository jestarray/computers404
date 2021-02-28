#lang pollen
@h1{Overview}

@(yt "e16UVGTGkw8")

As someone who's started off from garbage collected scripting languages like Javascript, all you know is that you type code in and out comes the behavior and we don't talk about anything that happens below because that's where spiders and monsters live. 

We all know that computers speak zeros(0) and ones(1), but that's as far as most people go because it already looks indistingushiable from dark magic. I personally thought I would never get any of this stuff because I'd need some divine level god-like math skills but it turns out you can get by with no pre-requiste knowledge of electrical engineering or computer science. 

@img[#:src "/images/roadmap.png"]{}

To prove this, we will be building a 16 bit virtual computer from scratch, in a couple weeks. We will be building the CPU, the RAM, and the assembly language, almost everything, all virtually using an emulator, so we don't have to do any electrical engineering. You won't need to purchase any materials, and there are little to no per-requisites, though knowing a programming language would be helpful, but it's not absolutely required. Overtly this is an effort to merge and condense the books, _Code by Charles Petzold_, a fun read that goes over the historical developmental thought process of how we got here, and @a[#:href "https://www.nand2tetris.org/book"]{The Elements of Computing System(aka nand2tetris)}, a full hands on approach on building a modern computer. Honestly these are 2 resources that I wish I would have read a long time ago because they paint the full picture of everything down to the very bit.

As for the 2nd part of nand2tetris which covers the software side of things like building a programming language, and an operating system, I think its better to diverge from there and explore them in the context of modern real world systems, and how to apply what you've learned about the hardware into programming, based off the book: @b{Computer Systems: A Programmers Perspective}. Knowing how programming works with the hardware not only enables you to write faster performing software but also transforms you from being just a developer, to an engineer who can consider more tradeoffs. I've been neglecting studying anything below the programming language for a while now but it turns out the stuff below is pretty facinating, not to mention it just feels good to go full circle.