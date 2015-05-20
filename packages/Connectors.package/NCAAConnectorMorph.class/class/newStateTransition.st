instance creation-UML
newStateTransition
	"Answer a new one of me ready for use in a state diagram"
	"NCAAConnectorMorph newStateTransition openInHand"
	^self new
		arrowNames: #(noArrow basicArrow);
		name: 'Transition'