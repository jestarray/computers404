#lang pollen
◊(yt "e16UVGTGkw8")

◊h1{Introduction}
◊slide{
    ◊h2{Abstraction}
    ◊img[#:src "/images/abstraction_stack.webp"]{}
}

Computer users and programmers, we sit on top of a big stack of abstraction, leaving us completely oblivious to the layers below. It's similar to how many of us know how to drive a car ◊em{but} have no idea how an internal combustion engine works. It's not that we need to know all the layers of abstraction below, ◊em{but} knowing ◊strong{how} things work under the hood is critical in building performant and reliable software, especially in domains such as systems programming, operating systems, and game engines, which need to maximize performance and minimize overhead.

Growing up, you may have been told computers speak 0's and 1's, but that's as far as most people get. It can be a little scary to think about what happens below, with intimidating terms such as ◊em{logic gates, boolean algebra, arithmetic logic units, and microarchitecture}, but I promise you it's not as complicated as it seems, nor do you need to be some math wiz to understand it.

◊slide{
    ◊h2{Roadmap}
    ◊img[#:src "/images/roadmap.png"]{}
}
To prove this, we will be building a 16-bit virtual computer from scratch over the next few weeks. We will be building the CPU, the RAM, and the assembly language, almost everything, all virtually using an emulator, so we don't have to deal with physical wires and chips. You won't need to purchase any materials, and there are little to no pre-requisites, although knowing a programming language and basic algebra would be helpful, it's not absolutely required. By the end of this, you'll understand how 0's and 1's get transformed into language we can understand and manipulate, and eventually into the apps and games you use everyday!

Overtly this is an effort to merge and condense:

◊slide{
    ◊img[#:src "/images/rec-books.webp"]{}
}

◊ul{
    ◊li{◊a[#:href "https://www.nand2tetris.org/book"]{The Elements of Computing System(aka nand2tetris)}, a full hands on approach on building a modern computer from logic gates(just the first half)}
    ◊li{◊a[#:href "https://csapp.cs.cmu.edu/"]{Computer Systems: A Programmer's Perspective}, an in depth look at how modern hardware and software interacts}}

I also recommend checking out ◊a[#:href "https://www.codehiddenlanguage.com/"]{Code by Charles Petzold} for a fun read, which gives a great historical overview on how we've deduced our way to binary and eventually computing, using just logic gates.

The 2nd half of nand2tetris covers the software side of things, like building a programming language, compiler, virtual machine, and an operating system. I think these are better left to other resources, as they have far better in-depth coverage than nand2tetris. Once we finish the first half of nand2tetris which ◊strong{demistifies} the hardware that's been such a blackbox to us, we can then jump into ◊a[#:href "https://csapp.cs.cmu.edu/"]{Computer Systems: A Programmer's Perspective} to learn about how software interacts with ◊strong{modern hardware}.
