visualization
addConcernInfo: aCollection to: aMorph
	| concernString |
	concernString := String streamContents: [:s |
		aCollection 
			do: [:concern | s nextPutAll: concern asString]
			separatedBy: [s nextPut: Character cr]].
	aMorph additionalInfo: aMorph methodReference asStringOrText, Character cr,
						'was covered by the following concerns: ', Character cr,
						concernString, Character cr.