NCFSM compatibility
willRespondToAnyOf: someEventSymbols
	"Answer whether I will respond to any of someEventSymbols in my current state"
	self halt.
	^true