visualization
addMethodNamesAsAdditionalInformation: morphs
	morphs do: [:each | 
		each additionalInfo: each methodReference asStringOrText, Character cr].