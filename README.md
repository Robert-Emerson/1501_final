1501_final
==========

Haskell 1501 Final Project

Author:
Robert Emerson

Date:
04/20/2013

Description:
Executing main.hs will begin a fork bomb written in Haskell and bash.

Purpose:
This program is a foray into system programming with Haskell. It uses the IO Monad,
will compile, and manages to do exactly what I wanted it to do. Additionally, it is
available on GitHub at https://github.com/Robert-Emerson/1501_final.

Execution:
The program will prompt the user to save all files, as the easiest way to recover from this is to restart your computer.
Then, if the user chooses to continue, it will run the readProcess command in Haskell.
The arguments to this command cause it to launch a terminal, create a shell script
containing a fork bomb in the bash shell scripting language and then execute this
script.

Design Decisions:
This program was initially designed to use the forkProcess function in Haskell.
It was re-written to use the bash fork bomb after testing revealed that the Haskell
code did not cause the computer to run out of resources and freeze. Instead, the
Haskell version ran and spawned ~63,000 processes, but eventually hit the process
limit enforced by the OS. To freeze the computer, a heavier weight process had to be
replicated, and I chose bash.
