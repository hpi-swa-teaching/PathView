drawing
connectParentFor: aClass morph: clsMorph 
	| parentMorph |
	(connections includesKey: (aClass -> aClass superclass)) ifTrue: [ ^self ].
	parentMorph := classMorphs at: aClass superclass ifAbsent: [].
	parentMorph ifNotNil: 
			[| connector |
			connector := (NCAAConnectorMorph newGeneralizationRelationship)
						fromMorph: clsMorph toMorph: parentMorph;
						yourself.
			self pasteUp addMorph: connector.
			connections at: (aClass -> aClass superclass) put: connector ]