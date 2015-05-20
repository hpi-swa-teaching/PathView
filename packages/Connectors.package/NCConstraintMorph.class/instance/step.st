stepping and presenter
step
	| myInputs newTarget |
	myInputs := self inputs.		"hang on to them"
	myInputs isEmpty ifTrue: [
		constraint ifNotNil: [ constraint := nil. self changed].
			self dieWithInput ifTrue: [ self delete ].
		^self ].
	newTarget := self target.
	(self needsToApplyConstraintGivenNewTarget: newTarget)
		ifTrue: 
			[self applyConstraint: newTarget.
			lastTarget := newTarget.
			stepTime := self minimumStepTime]
		ifFalse: [self incrementStepTime]