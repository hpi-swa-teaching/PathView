testing-container
testHarvestChangeFromSingleObjectToCollection
	| types container |
	self run: SHarvestingSandboxTest with: #testChangeFromSingleObjectToCollection.
	types := ((self bucket membersFor: SHClassA) at: 2).
	self assert: types size = 2.
	self assert: (types includes: SmallInteger).
	container := types detect: [:each | each isBehavior not].
	self assert: container = (self container: OrderedCollection
											   elements: {SmallInteger} 
											   keys: {}).