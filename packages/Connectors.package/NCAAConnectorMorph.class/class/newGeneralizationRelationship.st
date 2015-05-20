instance creation-UML
newGeneralizationRelationship
	"Answer a new one of me ready for use in a class diagram"

	"NCAAConnectorMorph newGeneralizationRelationship openInHand"

	^(self new) 
		arrowNames: #(noArrow openArrow);
		name: 'Generalization'