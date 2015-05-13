instance creation
platformSpecificSubclass
	^ Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [DTRMacHunspell].
		['win32'] -> [DTRWindowsHunspell].
		['unix'] -> [DTRUnixHunspell]}