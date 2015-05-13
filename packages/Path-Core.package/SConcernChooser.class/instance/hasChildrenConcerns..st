concern tree
hasChildrenConcerns: aCollection		
	"size corresponds to depth of tree"
	"concern groups"
	aCollection size = 1 
		ifTrue: [^ (self concernGroups at: aCollection first) notEmpty].
	"concerns"
	aCollection size = 2 
		ifTrue: [	(self concernMapping includesKey: aCollection second)
					ifTrue: [^ (self concernMapping at: aCollection second) notEmpty]].	
	"test classes"
	^ aCollection size = 3 