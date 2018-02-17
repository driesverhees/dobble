# dobble
This repository contains a program written in Julia to create card sets for the Dobble game.
A naieve brute-force algorithm has been implemented. The optimal solution, containing q*(q-1)+1 cards/symbols where q is the number of symbols per card, is not always found.

## How to run
The entry point of the application is [mail.jl](main.jl). 
The program can be executed by running `include("main.jl")` in the Julia console.