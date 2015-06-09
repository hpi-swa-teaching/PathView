accessing
methodMorphFor: aVariableName
	
	self entries
		do: [ :categoryMorph |
			(categoryMorph methodMorphFor: aVariableName)
				ifNotNilDo: [ :morph | ^ morph ] ].
	^ nil