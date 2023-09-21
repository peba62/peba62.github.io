%% SUDOKU

%% Run me with 
%% paradox --print Model 

%% The domain is the numbers from 1 to 9.
input_clause(unknown,hypothesis,
    [++dom(s(0))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(0)))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(0))))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(s(s(s(0)))))))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [++dom(s(s(s(s(s(s(s(s(s(0))))))))))]).

%% Equality
input_clause(unknown,hypothesis,
    [++equal(X, X)]).

%% The domain elements are pairwise different;
%% This is the negative part of equality.
input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(0)))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(0))))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(s(s(s(0)))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(0), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(0))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(s(s(s(0)))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(0)), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(0))), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(0))), s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(0))), s(s(s(s(s(s(0)))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(0))), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(0))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(0))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(0)))), s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(0)))), s(s(s(s(s(s(0)))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(0)))), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(0)))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(0)))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(0))))), s(s(s(s(s(s(0)))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(0))))), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(0))))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(0))))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(s(0)))))), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(s(0)))))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(s(0)))))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(s(s(0))))))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(s(s(0))))))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(s(s(s(s(s(s(s(s(0)))))))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [--equal(Y, X),
     ++equal(X, Y)]).

%% Generator:
%% At least one number on each field
%% el(I,J,X) means on row I, column J is the natural number X
input_clause(unknown,hypothesis,
    [--dom(I),
     --dom(J),
     ++el(I, J, s(0)),
     ++el(I, J, s(s(0))),
     ++el(I, J, s(s(s(0)))),
     ++el(I, J, s(s(s(s(0))))),
     ++el(I, J, s(s(s(s(s(0)))))),
     ++el(I, J, s(s(s(s(s(s(0))))))),
     ++el(I, J, s(s(s(s(s(s(s(0)))))))),
     ++el(I, J, s(s(s(s(s(s(s(s(0))))))))),
     ++el(I, J, s(s(s(s(s(s(s(s(s(0))))))))))]).

%% Restriction:
%% No two same numbers on a field (dual of previous)
%% This is in fact redundant in combination of the previous generator and 
%% already one of the following constraints
input_clause(unknown,hypothesis,
    [--el(I, J, X),
     --el(I, J, X1),
     ++equal(X, X1)]).

%% Restriction:
%% No number occurs twice in a row:
%% (J = J1) :- el(I,J,X), el(I,J1,X1), (X = X1).
%% slightly simpler:
input_clause(unknown,hypothesis,
    [--el(I, J, X),
     --el(I, J1, X),
     ++equal(J, J1)]).

%% Restriction:
%% No number occurs twice in a column:
input_clause(unknown,hypothesis,
    [--el(I, J, X),
     --el(I1, J, X),
     ++equal(I, I1)]).

%% where different(I,J,I1,J1) means that the field elements at 
%% (I,J) and at (I1,J1) are different
% different(I,J,I1,J1) -> 
%   ( el(I,J,X) & el(I1,J1,X1) -> -(X = X1)).
%% Now, the 3x3 subfields.
%% These subfields start at (1,1), (1,3), (1,6), ... , (6,3), (6,6)
%% i.e. these are their top-leftmost coordinates, when (1,1) is top-left
input_clause(unknown,hypothesis,
    [++subfield(s(0), s(0))]).

input_clause(unknown,hypothesis,
    [++subfield(s(0), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++subfield(s(0), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [++subfield(s(s(s(s(0)))), s(0))]).

input_clause(unknown,hypothesis,
    [++subfield(s(s(s(s(0)))), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++subfield(s(s(s(s(0)))), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [++subfield(s(s(s(s(s(s(s(0))))))), s(0))]).

input_clause(unknown,hypothesis,
    [++subfield(s(s(s(s(s(s(s(0))))))), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++subfield(s(s(s(s(s(s(s(0))))))), s(s(s(s(s(s(s(0))))))))]).

%% Each subfield contains no number twice:
%% Note: It is sufficient to specify only along the diagonals,
%% as along the row and columns the general row and column restrictions
%% above subsume the corresponding ones for the subfields.
%% Notice we do a little bit of integer arithmetic (+1 and +2) to talk
%% about the fields in a given subfield.
%% Perhaps more readable formulation of the axioms is like
%% subfield(I,J) -> 
%% 	( el(I,J,X) & el(s(I),s(J),X1) -> -(X = X1)).
%% which translates to
input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, J, X),
     --el(s(I), s(J), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, J, X),
     --el(s(I), s(s(J)), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, J, X),
     --el(s(s(I)), s(J), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, J, X),
     --el(s(s(I)), s(s(J)), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(J), X),
     --el(s(I), J, X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(J), X),
     --el(s(I), s(s(J)), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(J), X),
     --el(s(s(I)), J, X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(J), X),
     --el(s(s(I)), s(s(J)), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(s(J)), X),
     --el(s(I), J, X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(s(J)), X),
     --el(s(I), s(J), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(s(J)), X),
     --el(s(s(I)), J, X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(I, s(s(J)), X),
     --el(s(s(I)), s(J), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(s(I), J, X),
     --el(s(s(I)), s(J), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(s(I), J, X),
     --el(s(s(I)), s(s(J)), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(s(I), s(J), X),
     --el(s(s(I)), J, X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(s(I), s(J), X),
     --el(s(s(I)), s(s(J)), X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(s(I), s(s(J)), X),
     --el(s(s(I)), J, X)]).

input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --el(s(I), s(s(J)), X),
     --el(s(s(I)), s(J), X)]).

%% Some additional constraints. They are redundant but help 
%% to solve the Sudoku in a deterministic way quite often. 
%% I think the underlying heuristics used by people is called 
%% 'crosshatching'. 
%% In every subfield, every value must be put somewhere
input_clause(unknown,hypothesis,
    [--subfield(I, J),
     --dom(X),
     ++el(I, J, X),
     ++el(I, s(J), X),
     ++el(I, s(s(J)), X),
     ++el(s(I), J, X),
     ++el(s(I), s(J), X),
     ++el(s(I), s(s(J)), X),
     ++el(s(s(I)), J, X),
     ++el(s(s(I)), s(J), X),
     ++el(s(s(I)), s(s(J)), X)]).

%% In every row, every value must be put somewhere
input_clause(unknown,hypothesis,
    [--dom(I),
     --dom(X),
     ++el(I, s(0), X),
     ++el(I, s(s(0)), X),
     ++el(I, s(s(s(0))), X),
     ++el(I, s(s(s(s(0)))), X),
     ++el(I, s(s(s(s(s(0))))), X),
     ++el(I, s(s(s(s(s(s(0)))))), X),
     ++el(I, s(s(s(s(s(s(s(0))))))), X),
     ++el(I, s(s(s(s(s(s(s(s(0)))))))), X),
     ++el(I, s(s(s(s(s(s(s(s(s(0))))))))), X)]).

%% In every column, every value must be put somewhere
input_clause(unknown,hypothesis,
    [--dom(J),
     --dom(X),
     ++el(s(0), J, X),
     ++el(s(s(0)), J, X),
     ++el(s(s(s(0))), J, X),
     ++el(s(s(s(s(0)))), J, X),
     ++el(s(s(s(s(s(0))))), J, X),
     ++el(s(s(s(s(s(s(0)))))), J, X),
     ++el(s(s(s(s(s(s(s(0))))))), J, X),
     ++el(s(s(s(s(s(s(s(s(0)))))))), J, X),
     ++el(s(s(s(s(s(s(s(s(s(0))))))))), J, X)]).

%% The problem instance: a specific Sudoku grid

input_clause(unknown,hypothesis,
    [++el(s(0), s(s(s(s(s(s(s(s(0)))))))), s(0))]).

input_clause(unknown,hypothesis,
    [++el(s(s(0)), s(0), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(0))), s(s(0)), s(s(0)))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(0)))), s(s(s(s(s(0))))), s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(0)))), s(s(s(s(s(s(s(0))))))), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(0)))), s(s(s(s(s(s(s(s(s(0))))))))), s(s(s(s(s(s(s(0))))))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(0))))), s(s(s(0))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(0))))), s(s(s(s(s(s(s(0))))))), s(s(s(0))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(0)))))), s(s(s(0))), s(0))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(0)))))), s(s(s(s(s(0))))), s(s(s(s(s(s(s(s(s(0))))))))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(0))))))), s(0), s(s(s(0))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(0))))))), s(s(s(s(0)))), s(s(s(s(0)))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(0))))))), s(s(s(s(s(s(s(0))))))), s(s(0)))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(s(0)))))))), s(s(0)), s(s(s(s(s(0))))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(s(0)))))))), s(s(s(s(0)))), s(0))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(s(s(0))))))))), s(s(s(s(0)))), s(s(s(s(s(s(s(s(0)))))))))]).

input_clause(unknown,hypothesis,
    [++el(s(s(s(s(s(s(s(s(s(0))))))))), s(s(s(s(s(s(0)))))), s(s(s(s(s(s(0)))))))]).

