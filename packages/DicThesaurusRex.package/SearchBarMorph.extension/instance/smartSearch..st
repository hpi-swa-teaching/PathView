*DicThesaurusRex-override
smartSearch: event
	"Take the user input and perform an appropriate search"
	| input newContents |
	input := self contents asString
				ifEmpty: [^ self].
	(self searchGlobals: input) ifNotNil: [:result | ^ result]. 
	DTRPreferences synonymSearchEnabled
		ifTrue: [(self searchWithSynonyms: input) ifNotNil: [:result | ^ result]]
		ifFalse: [(self searchWithoutSynonyms: input) ifNotNil: [:result | ^ result]].
	newContents := input , ' -- not found.'.
	self newContents: newContents;
		 selectFrom: input size + 1 to: newContents size.
	event hand newKeyboardFocus: self