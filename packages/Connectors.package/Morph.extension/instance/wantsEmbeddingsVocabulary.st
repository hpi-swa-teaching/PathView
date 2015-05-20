*connectors-scripting
wantsEmbeddingsVocabulary
	submorphs ifNil: [ ^true ].	"called from EToyVocabulary>>initialize after basicNew"

	^ (Preferences valueOfFlag: #alwaysShowConnectionVocabulary)
		or: [ self wantsConnectionWhenEmbedded 
		or: [ self pinCount > 0 ]]