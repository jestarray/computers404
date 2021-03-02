#lang pollen
@(require "index.ptree")

@;doc is imported from .ptree
@(define toc-list (generate-toc (cdr doc)))

@(list-ref toc-list 0)

@(list-ref toc-list 1)

You can view and contribute to the source code here at @(a '((href "https://github.com/jestarray/computers404")) "https://github.com/jestarray/computers404")

Check out the interactive exercises at: @(a '((href "https://jest-systems.netlify.app/")) "https://jest-systems.netlify.app/")

Support my work on Patreon @(a '((href "https://www.patreon.com/jestarray")) "https://www.patreon.com/jestarray")