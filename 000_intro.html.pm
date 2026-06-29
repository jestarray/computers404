#lang pollen
◊(yt "Z_oxt8XlZ4g")

◊h1{Introduction}
◊slide{
    ◊h2{Abstraction Stack}
    ◊object[#:data "/images/abstraction_stack.svg" #:type "image/svg+xml"]{}
    ◊c-code-block{
int main() {
    printf("Hello, World!\n");
    return 0;
}}
}

In this series, we're going to unravel the mysteries of how computers work, from the bottom up.

Most programmers never see what's happening underneath their code.
We write Python, C++, or JavaScript... and somehow it turns into apps and games.

But between your code and the hardware is a giant stack of abstractions.

Growing up, you may have been told computers speak 0s and 1s, but that's as far as most people get. It can be a little intimidating to think about what happens below, with intimidating terms such as ◊em{logic gates, boolean algebra, and microarchitecture}, but I promise you it's not as complicated as it seems, nor do you need to be some math genius to understand it. By the way, we won't really cover Physics, Devices(Transistors).

◊slide{
◊h2{What is Abstraction?}

Abstraction is the idea of hiding unnecessary details so you can think about something at the right level of complexity. It is a ◊strong{mental tool} to manage complexity.

Abstraction is using something by understanding ◊strong{what} it does rather than ◊strong{how} it works internally.
}
It's similar how people know how to drive a car ◊em{but} have no idea how the engine works. Knowing how things work under the hood will prevent you from being ripped off, and in our case it will enable you to be a better developer unlocking the full power of the CPU to build things like operating systems, game engines, and high performance software.

◊slide{
    ◊h2{Roadmap}
    ◊img[#:src "/images/roadmap.png"]{}
}

We will be building a 16-bit virtual computer from scratch over the next few weeks. We will be building ◊em{the CPU, the RAM, and the assembly language}, all virtually using an emulator.

You ◊strong{won't} have to deal with ◊strong{physical} wires and chips. You won't need to purchase any materials. By the end of this, you'll understand how 0s and 1s get transformed into language we can understand and manipulate, and eventually into the apps and games you use everyday!

◊slide{
◊h2{Prerequisites}
◊ul{
    ◊li{Virtually None!}
    ◊li{Although some programming and basic algebra will help.}
    ◊li{No need to purchase any materials, everything is free!}
}
}

Overtly this is an effort to merge and condense:

◊slide{
    ◊img[#:src "/images/rec-books.webp"]{}
}

◊ul{
    ◊li{◊a[#:href "https://www.nand2tetris.org/book"]{The Elements of Computing System(aka nand2tetris)}, a full hands on approach on building a modern computer from logic gates}
    ◊li{◊a[#:href "https://csapp.cs.cmu.edu/"]{Computer Systems: A Programmer's Perspective}, an in depth look at how modern hardware and software interacts}}

I also recommend checking out ◊a[#:href "https://www.codehiddenlanguage.com/"]{Code by Charles Petzold} for a fun read, which gives a great historical overview on how we've deduced our way to binary and eventually computing, using just logic gates.

The 2nd half of nand2tetris covers the software side of things, like building a programming language, compiler, virtual machine, and an operating system. I think these are better left to other resources, as they have far better in-depth coverage than nand2tetris. Once we finish the first half of nand2tetris which ◊strong{demistifies} the hardware that's been such a blackbox to us, we can then jump into ◊a[#:href "https://csapp.cs.cmu.edu/"]{Computer Systems: A Programmer's Perspective} to learn about how software interacts with ◊strong{modern hardware}.