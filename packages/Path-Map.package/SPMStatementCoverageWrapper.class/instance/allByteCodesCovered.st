as yet unclassified
allByteCodesCovered
	"Cache byte code coverage result - no simulation if all statements has been reached"
	(allByteCodesCovered isNil or: [allByteCodesCovered = false])
		ifTrue: [allByteCodesCovered := self tracer 
							allByteCodesAlreadyCoveredFor: self asMethodReference].	
	^ allByteCodesCovered
