visiting
visitInstVar: aMorph

	(varName = aMorph variableName and: [type = aMorph type or: [type isNil]])
		ifTrue: [
			foundMorph := aMorph.
			SVisitorNotification signal]