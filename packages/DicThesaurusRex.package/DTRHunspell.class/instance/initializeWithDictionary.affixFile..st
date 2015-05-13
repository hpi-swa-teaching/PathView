initialize-release
initializeWithDictionary: dictionaryPathString affixFile: affixPathString
	affixFilePath := affixPathString.
	dictionaryFilePath := dictionaryPathString.
	self recreateHandle.
	self reloadIgnoredWords.