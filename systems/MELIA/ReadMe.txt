MELIA - A theorem prover for the Model Evolution Calculus with 
built-in linear integer arithmetic reasoning 
==============================================================

Version 0.1.3 (22/12/2011)

Author: Peter Baumgartner (Peter.Baumgartner@nicta.com.au)

See LICENSE for important licensing information


About
=====

MELIA is a theorem prover for the Model Evolution Calculus with Equality
and built-in linear integer arithmetic.

MELIA accepts formulas in the FOF, TFF, and TFF-INT formats (see
http://www.cs.miami.edu/~tptp/TPTP/TR/TPTPTR.shtml). It includes a
pre-processor for transforming such formulas into (sorted) constrained
clauses, as prescribed by the calculus. MELIA features a variety of flag
settings to control its search, e.g., for selecting literals to focus
inferences on.

MELIA has been written (from scratch) in Scala (http://www.scala-lang.org/)
and runs on the Java virtual machine. It is in a very early stage of
development and has not been tuned for performance.  When integer arithmetic
is involved, MELIA is incomplete even if (theoretically) unneccessary.
These issues will be addressed in forthcoming releases.


Installation
============

Installing MELIA requires a working scala environment, version 2.9.0 or higher.

(1) Edit the top of Makefile to set SCALA_HOME to the home directory of the scala
    installation. 

(2) Invoke 'make'

    Compilation is by default with 'fsc', the "fast scala compiler". 
    The expected result is a jar-file and the executable shell script 
    target/scala/melia , which can be moved anywhere. 
    See the comments in the Makefile for an alternative based on the java 
    runtime environment.


Running MELIA
=============

Running 'melia' (without the 's) displays usage information, in particular command line flags.

Running 'melia FILE' invokes the prover on the problem in FILE.

By default, MELIA guesses the TPTP language and theory used in FILE from the filename, FILE
(see the source Main.scala should you need to know how this is done.)
The default can be overriden using the flag setting
  -format [auto|tme|cnf|fof|tff|tff-int]

There is no command line argument to specify a time limit.


System Output
=============

MELIA, if it terminates normally, outputs to stdout one of the following 
SZS ontology strings (see http://www.cs.miami.edu/~tptp/)

% SZS status Unsatisfiable for FILE
% SZS status Theorem for FILE
% SZS status Satisfiable for FILE
% SZS status CounterSatisfiable for FILE
% SZS status Unknown for FILE

For TFF with integer arithmetic *currently* only the first two are relevant.


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


Acknowledgements
================
Thanks to Olivier Roland for changing the parser to packrat parsing, which speeds 
up parsing significantly. 
