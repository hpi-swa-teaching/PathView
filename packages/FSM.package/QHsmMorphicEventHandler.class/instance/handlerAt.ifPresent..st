private
handlerAt: aSymbol ifPresent: aBlock
	"Evaluate aBlock with my message send for aSymbol, if any"
	handlers ifNil: [ ^nil ].
	^handlers at: aSymbol ifPresent: [ :h | aBlock value: h ]