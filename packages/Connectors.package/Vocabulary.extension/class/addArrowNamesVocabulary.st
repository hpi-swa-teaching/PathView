*connectors
addArrowNamesVocabulary
	| vocab |
	self addStandardVocabulary: (vocab := ConnectorArrowNameType new).
	SymbolListTile updateAllTilesForVocabularyNamed: #ArrowNames.
	^vocab