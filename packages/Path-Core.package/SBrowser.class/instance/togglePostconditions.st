controls-prepost
togglePostconditions
	"Toggle code pane between displaying postconditions and method source"
	((self codeSource = #postconditions) or: 
	[currentCompiledMethod isContractWrapper not]) 
		ifTrue: [self codeSource: nil]
		ifFalse: [self codeSource: #postconditions].

	contents := nil.
	self contentsChanged