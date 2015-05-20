instance creation-UML
newDirectionalAssociation
	"Answer a new one of me with an arrow at the 'to' end ready for use in a class diagram"

	"NCAAConnectorMorph newDirectionalAssociation openInHand"

	^(self new)
		name: 'Association';
		arrowNames: #(noArrow umlArrow)