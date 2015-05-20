stepping
step
	"Evaluate the weighted sum of my aesthetics, and apply the results to 
	the nodes."

	(iterations \\ 3) caseOf: {
		[ 0 ] -> [ self computeForces ].
		[ 1 ] -> [ self limitForces ].
		[ 2 ] -> [ self applyForces ] }.

	iterations := iterations + 1.
	(iterations >= (maxIterations * 3)) ifTrue: [self stopStepping]