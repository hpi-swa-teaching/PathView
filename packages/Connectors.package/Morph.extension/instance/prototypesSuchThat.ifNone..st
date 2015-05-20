*connectors-gestures
prototypesSuchThat: selectionBlock ifNone: defaultBlock 
	"Return zero or more appropriate prototypes found in a Prototypes 
	flap (local, global), or in  
	the World, or make one from a class, or call defaultBlock with the 
	protoName and  
	gesture for a default"
	| container protos |
	container := self prototypeContainer.
	protos := container submorphs
				collect: [:m | m partRepresented renderedMorph]
				thenSelect: selectionBlock.
	protos isEmpty
		ifTrue: [ ^defaultBlock value ].
	^ protos