instance creation-UML
newImplementationRelationship
	"Answer a new one of me ready for use in a class diagram"
	"NCAAConnectorMorph newImplementationRelationship openInHand"
	^self newGeneralizationRelationship
		dashedLine: true;
		name: 'Implements'