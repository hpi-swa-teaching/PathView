pathMap-helper
checkTestResults: aString
	| textMorph |
	textMorph := self testRunner findDeepSubmorphThat: [:morph | 
		morph class =  PluggableTextMorphPlus and: 
		[morph text asString = aString]] 
	ifAbsent: nil.
	self assert: textMorph notNil.