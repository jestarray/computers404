#lang pollen
◊(require "index.ptree")
◊(define prev-page (previous here))
◊(define next-page (next here))
◊;doc is imported from .ptree
◊(define toc-list (generate-toc doc))

◊h1{Computer Systems}
◊toc-list

Report typos and errors at ◊a[#:href "https://github.com/jestarray/computers404"]{https://github.com/jestarray/computers404}