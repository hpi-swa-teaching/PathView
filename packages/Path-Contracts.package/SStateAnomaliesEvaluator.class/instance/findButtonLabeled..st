pathMap-commands
findButtonLabeled: aString
	^ self pathMap 
		findDeepSubmorphThat: [:morph | 
			morph class = PluggableButtonMorphPlus and: [morph label = aString]] 
		ifAbsent: nil 