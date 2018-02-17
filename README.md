# dobble
This repository contains a program written in Julia to create card sets for the Dobble game.
A naieve brute-force algorithm has been implemented. The optimal solution, containing q*(q-1)+1 cards/symbols where q is the number of symbols per card, is not always found.

## How to run
The entry point of the application is [mail.jl](main.jl). 
The program can be executed by running `include("main.jl")` in the Julia console.

## Results
Symbols/card `q`  | Optimal solution | Actual solution found
------------- | ------------- | -------------
3 | 7 cards | 7 cards
4 | 13 cards | 13 cards
5 | 21 cards | 21 cards
6 | 31 cards | 19 cards
7 | 43 cards | 19 cards
8 | 57 cards | ??

## Remarks
Note that this is a naieve implementation. It is not efficient and does not scale well.