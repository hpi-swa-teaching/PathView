drawing
connectSubclassesFor: aClass morph: clsMorph 
	aClass subclassesDo: [ :cls | | subclassMorph |
		(connections includesKey: (cls -> aClass)) ifFalse: [
			subclassMorph := classMorphs at: cls ifAbsent: [].
			subclassMorph ifNotNil: 
				[| connector |
				connector := (NCAAConnectorMorph newGeneralizationRelationship)
							connectStartTo: subclassMorph;
							connectFinishTo: clsMorph;
							yourself.
				self pasteUp addMorph: connector.
				connections at: (cls -> aClass) put: connector.
				]]]