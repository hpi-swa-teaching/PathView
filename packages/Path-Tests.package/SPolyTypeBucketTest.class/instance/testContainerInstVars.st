testing-container
testContainerInstVars
	| types container |
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOver.
	types := ((self bucket membersFor: SHClassA) at: 2).
	self assert: types size = 4.
	self assert: (types includes: SmallInteger).
	container := types detect: [:each | each isBehavior
									ifTrue: [false]
									ifFalse: [each typeOfContainer = OrderedCollection]].
	self assert: container = (self container: OrderedCollection 
									elements: {SmallInteger. self byteString} 
									keys: {}).
	container := types detect: [:each | each isBehavior
										ifTrue: [false]
										ifFalse: [each typeOfContainer = Dictionary]].
	self assert: container = (self container: Dictionary 
									elements: {SmallInteger} 
									keys: {self byteSymbol}).
	container := types detect: [:each | each isBehavior
										ifTrue: [false]
										ifFalse: [each typeOfContainer = Association]].
	self assert: container = (self container: Association 
									elements: {SmallInteger} 
									keys: {self byteSymbol}).			