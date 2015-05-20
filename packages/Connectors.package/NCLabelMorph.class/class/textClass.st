defaults
textClass
	^Smalltalk at: #NCGrabbableDisplayTextMorph
		ifAbsent: [ Smalltalk at: #NCTextMorph ifAbsent: [ TextMorph ]]