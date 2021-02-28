#lang pollen

@h1{Factoring}

@(yt "XYm5CQQeQPI")

Quick! what is 
@pre{8 * 27}

We can use the distributive property to break this down into something simpler:

@pre{8 * (20 + 7)}

@pre{160 + 56 = 216}

You could have did long multiplication, but the point is that, as long as we retain equality, we can re-arrange pieces of the problem and tease out certain parts, which will allow us to more easily reason a solution, and this is the essence of algebra.

@sub-heading{Boolean Algebra}

Boolean algebra has similar properties to regular algebra on numbers, and they are:

@h3{Communative Laws:}

@pre{(x * y) = (y * x)}

@pre{(x + y) = (y + x)}

that is to say, it doesn't matter how you order the inputs.

@h3{Associative Laws:}

@pre{(x * (y * z)) = ((x * y) * z)}

@pre{(x + (y + z)) = ((x + y) + z)}

that is to say the order in which you GROUP operations on inputs doesn't matter.

@h3{Distributive Laws:}
@pre{(x * (y + z)) = (x * y) + (x * z)}

@pre{(x + (y * z)) = (x + y) * (x + z)}

@h3{DeMorgan Laws:}
@pre{!(x * y) = !(x) + !(y)}

@pre{!(x + y) = !(x) * !(y)}

that is to say we can distribute nots(`!`).

@h3{Simplification}
So let's see how these laws play a role in simplification:

@pre{!(!x * !(x + y))}

Using DeMorgans law(distributing the inner !) we can turn it into this:

@pre{!(!x * (!x * !y))}

Now since we're only using ANDs `*`, we can use the associative law to do the left part first:

@pre{!((!x * !x) * !y)}

@pre{(!x * !x)} part can be just simplified to itself(idempotence law):

@pre{!(!x * !y)} and we can use DeMorgans Law again to distribute the outer ! to get:
@pre{(x + y)}

We took something that initially took 5 logic gates, and simplified it to using only 1.

Another way you could have figured this out is if you were given a truth table, you could just pattern match this with other truth tables.

Now, let me just say that I actually never memorized nor really used any of this, and I still got through the course material just fine. Since we're using a simulator, you don't have to worry about optimizing your implementation to use the smallest amount of logic gates possile. In real life, with real hardware, reducing the amount of logic gates we use could save us money and make things run more efficently, but again, since we're using a simulator, you don't have to worry. If you find that you're having lots of fun doing optimizing, don't let me stop you! 