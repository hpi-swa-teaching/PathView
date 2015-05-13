test tree
hasChildrenTest: aCollection
	"size corresponds to depth of tree"
	| testRef |
	"test classes"
	aCollection size = 1 
		ifTrue: [^ aCollection first inheritedTestSelectors notEmpty].
	"test selectors"
	aCollection size = 2 
		ifTrue: [testRef := MethodReference 
							class: aCollection first  selector: aCollection second. 
			^ (self project concerns concernsOfTest: testRef) notEmpty].
	"concern groups"
	^ aCollection size = 3