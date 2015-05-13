dropping/grabbing
grabAction
	"If a key-type is present, use it. Else, use the container-type."
	
	| classMorph |
	classMorph := SClassMorph on: (self keyType ifNil: [ self containerType ]).
	SNoteConnector basicNew fromMorph: self toMorph: classMorph. "Don't use openFor:connectedTo:, it assumes an SClassDiagramMorph"
	^ classMorph openInHand; yourself