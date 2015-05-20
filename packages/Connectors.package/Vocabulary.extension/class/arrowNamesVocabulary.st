*connectors
arrowNamesVocabulary
	"Vocabulary arrowNamesVocabulary"
	^(self vocabularyNamed: #ArrowNames)
			ifNil: [ self addArrowNamesVocabulary ]
