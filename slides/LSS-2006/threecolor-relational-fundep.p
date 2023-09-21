%% Three-coloring, analysis of the spec:
%% This is to prove that blue functionally depends on red and green
%% That is, blue is a function of red and green
%% That is, red and green uniquely determines blue
%% That is, whenever we have two colorable graphs with the same vertices 
%% that differ wrt the blue nodes 
%%      then they must differ wrt their red or green nodes
%%      (right-uniqueness)

%% Run with
%% darwin -pl 3 threecolor-relational-fundep.p

%% The one coloring:
fof(at_least_one_color1, axiom,
	(! [N] : (red1(N) | green1(N) | blue1(N)))).

fof(at_most_one_color1, axiom,
	(! [N] : ( ( red1(N) => ~green1(N) ) &
		   ( red1(N) => ~blue1(N) ) &
		   ( blue1(N) => ~green1(N) ) ))).

fof(adjacent_different_color1, axiom,
	(! [M,N] : ( ( (red1(M) & red1(N)) => ~edge(M,N) ) &
		     ( (green1(M) & green1(N)) => ~edge(M,N) ) &
		     ( (blue1(M) & blue1(N)) => ~edge(M,N) )
		))).

%% The other coloring
fof(at_least_one_color2, axiom,
	(! [N] : (red2(N) | green2(N) | blue2(N)))).

fof(at_most_one_color2, axiom,
	(! [N] : ( ( red2(N) => ~green2(N) ) &
		   ( red2(N) => ~blue2(N) ) &
		   ( blue2(N) => ~green2(N) ) ))).

fof(adjacent_different_color2, axiom,
	(! [M,N] : ( ( (red2(M) & red2(N)) => ~edge(M,N) ) &
		     ( (green2(M) & green2(N)) => ~edge(M,N) ) &
		     ( (blue2(M) & blue2(N)) => ~edge(M,N) )
		))).


%% The 'equal' relations:
fof(equal_blue, axiom,
	(equal_blue <=> (! [N]: ( blue1(N) <=> blue2(N) )))).

fof(equal_red, axiom,
	(equal_red <=> (! [N]: ( red1(N) <=> red2(N) )))).

fof(equal_green, axiom,
	(equal_green <=> (! [N]: ( green1(N) <=> green2(N) )))).

%% Chose one:
%% provable:
fof(blue_dependant_provable, conjecture, ((equal_red & equal_green) => equal_blue)).
%% non-provable, darwin will return a counterexample:
%% fof(blue_dependant_nonprovable, conjecture, (equal_red => equal_blue)).

