message functions
methodNodeFrom: aString notifying: aController
	"Compile the string storing the source code"
	| methodNode |
	methodNode := (self selectedClassOrMetaClass 
		compile:  aString
		classified: self selectedMessageCategoryName
		notifying: aController
		trailer: Object defaultMethodTrailer
		ifFail: [^ nil]).
	methodNode == nil ifTrue: [^ nil].
	methodNode method putSource: aString fromParseNode: methodNode node inFile: 2
			withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Contract method'; cr].
	^ methodNode