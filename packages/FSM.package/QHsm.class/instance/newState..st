state handler actions
newState: aStateName
	"Drive state handlers to accomplish a static state transition.
	Answers nil for convenience: you can say:
		^self newState: 'whatever'
	in a handler method.
	A static state transition is one in which the source and target of the transition do not change at run time.
	See also #newDynamicState:"
	"Q:=TRAN()"
	self transitionDynamicallyTo: (self state: aStateName).
	^nil