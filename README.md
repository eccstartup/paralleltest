paralleltest
============

Control.Parallel.Strategies test

###Sum.hs
```
ghc -o Sum Sum.hs
time ./Sum >result.txt
```
It takes 202 minutes.

###Sump1.hs
```
ghc -O2 Sump1.hs -threaded -rtsopts -eventlog
time ./Sump1 +RTS -N6 -l >resultp1.txt
```
#It takes 3 minutes!
