private
state: stateOrName
	"Construct a new state for me"
	^stateOrName isQState
		ifTrue: [ stateOrName ]
		ifFalse: [ QState fsm: self name: stateOrName]