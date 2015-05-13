initialize-release
recreateHandle
	handle := self 
		apiCreate: (affixFilePath ifNil: [self defaultAffixPath])
		dPath: (dictionaryFilePath ifNil: [self defaultDictionaryPath])