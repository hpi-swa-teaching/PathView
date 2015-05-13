test tree
getChildrenTest: aCollection
	"size corresponds to depth of tree"
	| testRef concerns |
	"test classes"
	aCollection size = 1 
		ifTrue: [ ^ aCollection first inheritedTestSelectors collect: [:each | {aCollection first. each}]].
	"test selectors"
	aCollection size = 2 
		ifTrue: [	testRef := MethodReference 
							class: aCollection first  selector: aCollection second. 
				concerns := self project concerns concernsOfTest: testRef.
				^ (self project concerns groupsOfConcerns: concerns)
					collect: [:each | {aCollection first. aCollection second. each}]].
	"concern groups"
	aCollection size = 3
		ifTrue: [	testRef := MethodReference 
							class: aCollection first  selector: aCollection second. 
				^ (self project concerns concernsOfGroup: aCollection third andTest: testRef)
					collect: [:each | {aCollection first. aCollection second. 
									aCollection third. each}]].