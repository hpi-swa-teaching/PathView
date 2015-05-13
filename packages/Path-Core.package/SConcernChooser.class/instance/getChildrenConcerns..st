concern tree
getChildrenConcerns: aCollection
	"size corresponds to depth of tree"
	"concern groups"
	aCollection size = 1 
		ifTrue: [^ (self concernGroups at: aCollection first) asSortedCollection 
					collect: [:each | {aCollection first. each}]].
	"concerns"
	aCollection size = 2 
		ifTrue: [	^ (self project concerns testClassesOfConcern: aCollection second)
					collect: [:each | {aCollection first. aCollection second. each}]].
	"test classes"
	aCollection size = 3
		ifTrue: [^ (self project concerns 
					testSelectorsOfClass: aCollection third 
					andConcern: aCollection second)
						collect: [:each | {aCollection first. aCollection second. 
										aCollection third. each}]].