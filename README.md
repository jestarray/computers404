# computers404

these are my writeups for a youtube series I'm doing on computer systems. It uses pollen(Racket) as a static site generator and markup language. Check it out! https://docs.racket-lang.org/pollen/index.html

## TODO

* make entire site downloadable to be viewable offline
* tagging system and ability to search through them fast
* make more mobile friendly(pre is making pages scale)
* slugify urls
* research why lighthouse reports 2 seconds spent on styling css before rendering the page interactive

## how to build:

Reset cache(required every racket update):

`raco pollen reset`

## Distribute:

`raco pollen render`

`raco pollen publish`

make sure index.html is rendered!
