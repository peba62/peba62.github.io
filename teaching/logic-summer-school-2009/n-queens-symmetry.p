%%
%% Run this with 
%% e-darwin -ls true -pl 3 n-queens-symmetry.p 
%%
%%
%% Problem spec:
%% queens_p =
%%          forall (i in 1..n, j in i + 1..n) (
%%                  p[i]     != p[j]
%%          /\      p[i] + i != p[j] + j
%%          /\      p[i] - i != p[j] - j
%%          );
%%
%% Copy of problem spec:
%% queens_q =
%%          forall (i in 1..n, j in i + 1..n) (
%%                  q[i]     != q[j]
%%          /\      q[i] + i != q[j] + j
%%          /\      q[i] - i != q[j] - j
%%          );

%% Prove that: 
%%   forall n: queens_p /\ (forall i=1..n: q[i] = p[n+i-1]) => queens_q
%%

%%%%%%%%%%%%%%%%%%%
%% n-queens problem
%%%%%%%%%%%%%%%%%%%

%% ... in terms of decision variables named p:

fof(queens_p, axiom, 
	(queens_p =>
	     (! [I,J] : (( le(s(n0), I) & le(I, n) &
	                   le(s(I), J) & le(J, n)) =>
		         ( ~ (p(I) = p(J)) 
    		           &
   		           ~ (plus(p(I), I) = plus(p(J), J)) 
   		           &
  		           ~ (minus(p(I), I) = minus(p(J), J))))))).

%% The permutation function i -> n+1-i,
%% defined on 1 =< i =< n ('s' is successor):
fof(permutation, axiom, (! [I] : 
        ((le(s(n0), I) & le(I, n)) => (perm(I) = minus(s(n),I))))).
     
%% ... in terms of decision variables named q:

fof(queens_q, axiom, 
	(( ! [I,J] : (( le(s(n0), I) & le(I, n) &
	                le(s(I), J) & le(J, n) % &
		        % A lemma, instantiated to the I and J we 
		        % are looking at. It would be better to use instead
		        % the anti-monotonicity property below. That
		        % property entails this lemma instance together
		        % with other properties of the integers.
                        %% ( le(s(I), J) <=> le(s(perm(J)), perm(I)))
		    ) =>
		      ( ~ (q(I) = q(J)) 
    		        &
 		        ~ (plus(q(I), I) = plus(q(J), J)) 
    		        &
    		        ~ (minus(q(I), I) = minus(q(J), J)))))
         => queens_q)).

%% To prove: "queens_p /\ q is a permutation of p => queens_q"
%% variable symmetry (mirroring horizontally)
fof(queens_sym, conjecture, 
    ((queens_p & (! [I] : (q(I) = p(perm(I))))) => queens_q)).

%% Other symmeries:
%% value symmetry (mirroring vertically)
%% fof(queens_sym, conjecture, 
%%      ((queens_p & (! [I] : (q(I) = perm(p(I))))) => queens_q)).
%% value and variable symmetry (mirroring horizontally and vertically)
%% fof(queens_sym, conjecture, 
%%      ((queens_p & (! [I] : (q(I) = perm(p(perm(I)))))) => queens_q)).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Properties of permutations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Permutation stays in range 1..n:
fof(permutation_range, axiom,
	(! [I] : ( ( le(s(n0), I) & le(I, n) )  =>
                   ( le(s(n0), perm(I)) & le(perm(I), n))))).

%% The permutation is anti-monotone:
%% XXX
fof(permutation_anti_monotone, axiom,
 	(! [I,J] : ( lt(I, J) <=> lt(perm(J), perm(I))))).

%% Lemma
fof(permutation_another_one, axiom,
	(! [J, I] : (minus(I, J) = minus(perm(J), perm(I))))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Integer theory axioms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Orderings

%% Axioms for less_or_equal:
fof(le_ref, axiom,      (! [X] : le(X,X))).
fof(le_trans, axiom,  (! [X,Y,Z] : ((le(X,Y) & le(Y,Z)) => le(X,Z)))).
fof(le_antisym, axiom,  (! [X,Y] : ((le(X,Y) & le(Y,X)) => (X=Y)))).

%% Axioms for (strictly) less:
fof(lt_irref, axiom,      (! [X] : (~ lt(X,X)))).
fof(lt_trans, axiom,  (! [X,Y,Z] : ((lt(X,Y) & lt(Y,Z)) => lt(X,Z)))).

%% %% Axioms relating less and less_or_equal:
fof(le_lt, axiom,      (! [X,Y] : (le(X,Y) <=> ((X = Y) | lt(X,Y))))).

%% Total order:
fof(le_total, axiom,  (! [X,Y] : (lt(X,Y) | (X=Y) | lt(Y,X)))).

%% Successors

fof(succ_lt, axiom, (! [X] : lt(X,s(X)))).

fof(succ_le, axiom, (! [X] : le(X,s(X)))).

fof(le_lt_s_lemma, axiom,
   	(! [I,J] : ( le(s(I), J) <=> lt(I, J)))).

%% Plus and minus
fof(plus1, axiom, (! [I, J, K, L] : ((plus(I, J) = plus(K, L)) <=> 
	                             (minus(I, K) = minus(L, J))))).

%% Important
fof(minus1, axiom, (! [I, J, K, L] : ((minus(I, J) = minus(K, L)) <=> 
	                             (minus(I, K) = minus(J, L))))).

