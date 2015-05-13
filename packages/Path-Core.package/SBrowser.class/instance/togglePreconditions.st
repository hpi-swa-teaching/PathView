controls-prepost
togglePreconditions
	"Toggle code pane between displaying preconditions and method source"
	((self codeSource = #preconditions) or: 
	[currentCompiledMethod isContractWrapper not])
		ifTrue: [self codeSource: nil]
		ifFalse: [self codeSource: #preconditions.].
	
	contents := nil.
	self contentsChanged