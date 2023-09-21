%% Group theory - are all groups commutative?

%% Run me with 
%% paradox --print Model 

%----There exists an identity element 
input_clause(left_identity,axiom,
    [++equal(multiply(identity,X), X)] ).

%----For any x in the group, there exists an element y such that x*y = y*x 
%----= identity.
input_clause(left_inverse,axiom,
    [++equal(multiply(inverse(X),X), identity)] ).

%----The operation '*' is associative 
input_clause(associativity,axiom,
    [++equal(multiply(multiply(X,Y),Z), multiply(X,multiply(Y,Z))) ]).

input_clause(commutativity,conjecture,
    [--equal(multiply(x,y),multiply(y,x))] ).
