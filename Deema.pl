male(theeb). 
male(abdulrahman).
male(hussein).  

female(zafira). 
female(deema).
female(asma). 

parent(theeb, abdulrahman).
parent(theeb, hussein). 
parent(theeb, deema).
parent(theeb, asma).
 
parent(zafira, abdulrahman).
parent(zafira, hussein). 
parent(zafira, deema).
parent(zafira, asma).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.

/* Find the answers to these queries:
Was ali the parent of ahmad? ?- parent(ali, ahmad).
Was khan the parent of ahmad? Was muhammad the parent of faisal?
Was faisal the parent of hassan? Was muhammad the parent of sara? */