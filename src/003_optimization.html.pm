#lang pollen

◊h1{Factoring}

◊(yt "XYm5CQQeQPI")

Quick! what is 
◊pre{8 * 27}

We can use the distributive property to break this down into something simpler:

◊pre{8 * (20 + 7)}

◊pre{160 + 56 = 216}

You could have did long multiplication, but the point is that, as long as we ◊strong{retain equality}, we can re-arrange pieces of the problem and tease out certain parts, which allows us to more easily reason about a solution, and this is the essence of algebra.

◊sub-heading{Boolean Algebra}

Boolean algebra has similar properties to regular algebra on numbers, and they are:

◊h3{Communative Laws:}

◊pre{(x * y) = (y * x)}

◊pre{(x + y) = (y + x)}

that is to say, it doesn't matter how you order the inputs.

◊h3{Associative Laws:}

◊pre{(x * (y * z)) = ((x * y) * z)}

◊pre{(x + (y + z)) = ((x + y) + z)}

that is to say the order in which you GROUP operations on inputs doesn't matter.

◊h3{Distributive Laws:}
◊pre{(x * (y + z)) = (x * y) + (x * z)}

◊pre{(x + (y * z)) = (x + y) * (x + z)}

The ◊strong{major difference} in boolean algebra is that there's a ◊strong{2nd distributive law}, which says that we can distribute ◊strong{+(or)} over ◊strong{*(and)}, unlike regular algebra.

◊q{Example of why addition distributive law doesn't work for regular numbers
◊pre{2 + (3 * 4) = 14}
◊pre{(2 + 3) * (2 + 4) = 30}
}

◊h3{DeMorgan Laws:}
◊pre{!(x * y) = !(x) + !(y)}

◊pre{!(x + y) = !(x) * !(y)}

that is to say we can distribute nots(!). Notice how ◊strong{+(OR)} turns into ◊strong{*(AND)} and vice versa when a not(!) is distributed.

◊h2{Example Simplification}

◊h3{Simplify the following expression:}
◊pre{!(!x * !(x + y))}

◊h3{Using DeMorgans law on the inner !(x + y), we can turn it into this:}

◊pre{!(!x * ◊span[#:style "color: red;"]{!}(x + y))}
◊pre{!(!x * ◊span[#:style "color: red; "]{(!x * !y)})}

◊h3{Now the entire expression is only using *(ANDs), we can use the associative law to group and do the left part first:}

◊pre{!(!x * ◊span[#:style "color: red; "]{(!x * !y)})}
◊pre{!(◊span[#:style "color: red; "]{(!x * !x)} * !y)}

◊h3{Apply Idempotence Law (!x * !x) which simplifies to itself}
◊pre{!(◊span[#:style "color: red; "]{(!x * !x)} * !y)}
◊pre{!(◊span[#:style "color: red;"]{!x} * !y)}

◊h3{Apply DeMorgans Law again to distribute the outer ! to get:}
◊pre{◊span[#:style "color: red;"]{!}(!x * !y)}

◊h3{Finally:}
◊pre{(x + y)}

We took something that initially took ◊strong{5} logic gates, and simplified it to using only ◊strong{1}.

Another way to simplify is if you were given a truth table, you could pattern match against known logic gates

◊(table 
(table-headings (list "x" "y" "f (x, y)"))
(table-entries 
(list 0	0 0)
(list 0	1 1)
(list 1	0 1)
(list 1	1 1)
) #:caption "!(!x * !(x + y))") 

◊h3{Further boolean simplification}
If you enjoy optimizing for the smallest number of logic gates possible, check out ◊a[#:href "https://www.youtube.com/watch?v=RO5alU6PpSU"]{Karnaugh maps}. In real life, with real hardware, reducing the amount of logic gates you use could save you money and make things run more efficently, but since we're going to be using a simulator, you don't have to worry about it. If you find that you're having fun optimizing, don't let me stop you! 