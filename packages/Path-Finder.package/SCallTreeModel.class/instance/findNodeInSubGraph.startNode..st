tree functions
findNodeInSubGraph: aNumber startNode: aNode

	| lastNode |
	aNode nextCalls do: [:each | 
		each id = aNumber ifTrue: [^ each].
		each id < aNumber ifTrue: [lastNode := each].
		each id > aNumber ifTrue: [
			lastNode	ifNotNil: [^ self findNodeInSubGraph: aNumber startNode: lastNode]]].
	lastNode ifNotNil: [^ self findNodeInSubGraph: aNumber startNode: lastNode].
	^ nil