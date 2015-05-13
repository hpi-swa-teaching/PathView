tests
testCreateWithCustomAffixFileAndDictionary
	"since we cannot assert there is another dictionary present, just call the constructor with the default paths"
	| instance |
	self shouldnt: [ instance := DTRHunspell dictionary: sut defaultDictionaryPath affixFile: sut defaultAffixPath ] raise: Error
		description: 'creating DTRHunspell with custom dictionary failed'.
	self assert: sut class = instance class description: 'hunspell with custom dictionary does not use platform specific class'