user class selection
userSelectedClass: aString
	
	| allClasses |
	allClasses := Class allSubInstances.
	^ (SMultipleChoiceRequest
		prompt: 'Choose a ', aString, '. Choose a Association/Collection/Dictionary type as Container type.'
		labels: (allClasses collect: #name)
		values: allClasses)