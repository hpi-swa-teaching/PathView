testing
isIn: aStateOrName
	"Being in a given state means also being in all the substates of that state."
	| state |
	state := myState.
	[ state notNil ] whileTrue: [
		state = aStateOrName ifTrue: [ ^true ].
		state := state superstate ].
	^false