parsing
foundWord: isAcronymBoolean
	foundWordCallback 
		ifNotNil: [:callback | callback cull: currentWord contents cull: isAcronymBoolean]