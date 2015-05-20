state handler actions
newDynamicState: aStateName
	"Drive state handlers to accomplish a dynamic state transition.
	A dynamic state transition is one in which the source and target of the transition may change at run time.
	Answers nil for convenience: you can say:
		^self newDynamicState: 'whatever'
	in a handler method.
	See also #newState:"
	"Q:=TRAN:=DYN()"

	self transitionDynamicallyTo: (self state: aStateName).
	^nil