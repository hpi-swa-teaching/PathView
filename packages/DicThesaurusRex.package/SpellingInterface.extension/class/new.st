*dicthesaurusrex-overrides
new
	^(Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [MacSpellingInterface].
		['win32'] -> [DTRWindowsHunspell].
		['unix'] -> [DTRUnixHunspell]}
	otherwise: [IspellSpellingInterface])
			basicNew
			initialize;
			yourself