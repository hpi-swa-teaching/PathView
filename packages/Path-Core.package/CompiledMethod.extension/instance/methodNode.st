*Path-Core-override
methodNode
	"Return the parse tree that represents self"
	| source |
	"Fix for debugging OMeta"
	(self methodClass inheritsFrom: (Smalltalk at: #OMeta2 ifAbsent: []))
		ifTrue: [^ self decompile].
	SBreakpointManager installedNodes at: self ifPresent: [:node | ^ node].
	^ (source := self getSourceFromFile)
			ifNil: [self decompile]
			ifNotNil: [self parserClass new
								parse: source
								class: (self methodClass ifNil: [self sourceClass])]
