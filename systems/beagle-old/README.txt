Beagle 0.4

About
=====
Beagle is an automated theorem prover for sorted first-order logic with equality over
built-in theories. The theories currently supported are linear integer, linear
rational and linear real arithmetic. It accepts formulas in the FOF, TFF, and
TFA formats of the TPTP syntax, see http://www.cs.miami.edu/~tptp/TPTP/TR/TPTPTR.shtml .

A first-order prover, Beagle accepts arbitrarily quantified input formulas and
converts them to clause normal form. The core reasoning component implements
the Hierarchic Superposition Calculus with Weak Abstraction [BW13]. That
calculus generalizes the well-known superposition calculus by integrating
black-box reasoning for specific theories. For the theories mentioned above,
Beagle combines quantifier elimination procedures and other solvers for
discarding proof obligations over these theories.

Beagle uses the well-know Discount loop for saturating a clause set under the
calculus' inference rules. Simplification techniques include standard ones,
such as subsumption deletion, rewriting by ordered unit equations, tautology
deletion. It also includes theory specific simplification rules for evaluating
ground (sub)terms, and for exploiting cancellation laws and properties of
neutral elements, among others.

Beagle features a splitting rule for clauses that can be divided
into variable disjoint parts. Splitting is particularly useful in combination
with the quantifier elimination procedure mentioned above, as the theory reasoner then
need to deal with conjunctions of quantifier-free unit clauses only.

Beagle has been implemented in Scala (http://www.scala-lang.org).  It is a
full implementation of the calculus mentioned above, albeit a slow
one. Fairness is achieved through a combination of measuring clause lengths,
depths and their derivation-age.  Beagle uses a single, uniform strategy for
every problem.

Beagle's web site is http://users.cecs.anu.edu.au/~baumgart/systems/beagle/index.html

[BW13] Baumgartner P., Waldmann U. (2013), Hierarchic Superposition With Weak
       Abstraction, Bonacina M.P., CADE-24 (Lake Placid, USA), LNAI, Springer.


Installation
============
(0) Make sure a Java runtime environment, version 1.6 or newer, is installed on your system.

(1) Install sbt, version 0.12.3, from http://www.scala-sbt.org .

    sbt ("simple build tool") is a compilation manager for Scala programs.
    Because sbt can download missing libraries and even the Scala compiler by demand,
    the following is expected to work, even if no Scala compiler has been installed on your system. 

(2) Invoke sbt:

    $ sbt

(3) optional: on the sbt prompt invoke 'run':
    
    > run

    Expected output shows downloading the Scala compiler, compiling Beagle, and running 
    Beagle without arguments, giving usage information.
    The last line should contain "[success]".

(4) On the sbt prompt invoke 'assembly':

    > assembly

    This builds a Java-archive of the compiled Beagle, as target/scala-2.10/beagle.jar .
    Ignore the warning. The last line should again contain "[success]".

    Exit sbt by pressing ^D

(5) Invoke Beagle on the command line:

    $ java -jar /PATH/TO/THIS/DIRECTORY/target/scala-2.10/beagle.jar FILE

    where FILE contains the problem to be proven in TPTP TFA syntax. 
    
    Omitting FILE gives some help on command line arguments.

    To test your installation try 

    $ java -jar /PATH/TO/THIS/DIRECTORY/target/scala-2.10/beagle.jar -genvars test/test-list.p

    Expected result is a log of inference rules applied, an SZS status message
    "theorem" and some statistics. 

    For your convenience, there is a script bin/beagle that executes the above
    java command. As it sets some more options this is preferred.



System Output
=============

Beagle, if it terminates normally, outputs to stdout one of the following 
SZS ontology strings (see http://www.cs.miami.edu/~tptp/)

% SZS status Unsatisfiable for FILE
% SZS status Theorem for FILE
% SZS status Satisfiable for FILE
% SZS status CounterSatisfiable for FILE
% SZS status Unknown for FILE


Notes
=====
- File names in include statements are implicitly prefixed with the value of
  the environment variable TPTP, if set.
- Comments:
  /* ... */ comments are not supported at all, the parser will throw over.
  %-comments are OK as long as they don't occur within statements or formulas. Thus,

  %------------------------------------------------------------------------------
  tff(prove_31_not_12,conjecture,
     ( 31 != 12 )).
  %------------------------------------------------------------------------------

  is OK, while

  %------------------------------------------------------------------------------
  tff(prove_31_not_12,conjecture,
  % That's easy:
     ( 31 != 12 )).
  %------------------------------------------------------------------------------

  is not.



Contact
=======
Peter.Baumgartner@nicta.com.au

