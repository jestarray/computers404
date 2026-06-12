#lang pollen
◊(require txexpr)

◊h1{C Implicit Signed Conversions}


In C, operations on numbers that mix signed and unsigned have a weird unwanted surprising trick, and that is: ◊strong{signed values implicitly cast to unsigned values}. Such operations include comparison operations as well as the 4 basic arithmetic operations(+, -, *, /), and comparisons(>=, ==, etc). This can result into some very hard to spot bugs.

By default numbers are signed. Numbers that have a "U" next to them means unsigned literal, e.g 264U.
Given a bit width of 32 bits 
◊(table #:style '((width: "100%;")) 
    ◊(table-headings (list "A" "B" "Relation" "Evaluation"))
    ◊(table-entries 
    (list "0" "0U" "==" "unsigned")
    (list "-1" "0" "<" "signed")
    (list "-1" "0U" ◊(details '() ">") "unsigned")
    (list "2147483647" "-2147483647-1" ">" "signed")
    (list "2147483647U" "-2147483647-1" "<" "unsigned")
    (list "-1" "-2" ">" "signed")
    (list "(unsigned)-1" "-2" ">" "unsigned")
    (list "2147483647" "2147483648U" "<" "unsigned")
    (list "2147483647" "(int)2147483648U" ">" "signed")
    )
    )


There are compiler flags and static analysis tools you can use to warn you when this happens. More newer languages(rust) will force you to cast explicitly.

Use -Wall -Wextra -pedantic to catch this overflow bug