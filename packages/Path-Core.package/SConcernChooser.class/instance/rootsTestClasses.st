test tree
rootsTestClasses
	self project ifNil: [^ #()].
	^ (self project testClasses asSortedCollection: [:a :b | a asString <= b asString])
		select: [:each | each inheritedTestSelectors notEmpty] 
		thenCollect: [:each | {each}]