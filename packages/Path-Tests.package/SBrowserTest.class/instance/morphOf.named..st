helper
morphOf: aClass named: aSymbol
	^ self browserMorph 
		findDeepSubmorphThat: [:morph | 
			morph class = aClass 
				and: [morph knownName = aSymbol 
					or: [(morph respondsTo: #label) and: [morph label = aSymbol]]]] 
		ifAbsent: [nil]