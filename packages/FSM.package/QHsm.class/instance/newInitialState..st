state handler actions
newInitialState: aStateOrName
	"to be used by handlers only in response to the #init event.
	Sets myState to the new state.
	Answers nil for convenience: you can say:
		^self newInitialState: 'whatever'
	in a handler method.
	Q:=INIT()"

	myState := self state: aStateOrName.
	^nil