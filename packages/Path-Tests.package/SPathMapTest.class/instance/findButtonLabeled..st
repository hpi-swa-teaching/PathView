pathMap-helper
findButtonLabeled: aString
	^ self testRunner 
		findDeepSubmorphThat: [:morph | 
			morph class = PluggableButtonMorphPlus and: [morph label = aString]] 
		ifAbsent: nil 