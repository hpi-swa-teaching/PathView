stepping and presenter
step
	"Modified version of super method that assumes a single input"
	| myInput newTarget |

	myInput := inputs at: 1 ifAbsent: [].
	myInput ifNil: [
		constraint ifNotNil: [ constraint := nil. self changed].
			self dieWithInput ifTrue: [ self delete ].
		^self ].

	newTarget := self target.

	(self needsToApplyConstraintGivenNewTarget: newTarget)
		ifTrue: 
			[self applyConstraint: newTarget.
			lastTarget := newTarget.
			stepTime := self minimumStepTime]
		ifFalse: [self incrementStepTime].

	self ensureInFront.