testing-container
testHarvestChangeFromArrayToOrderedCollection
	| types container |
	self run: SHarvestingSandboxTest with: #testChangeFromArrayToOrderedCollection.
	types := ((self bucket membersFor: SHClassA) at: 2).
	self assert: types size = 2.
	container := types detect: [:each | each typeOfContainer = Array].
	self assert: container = (self container: Array
											   elements: {SmallInteger} 
											   keys: {}).
	container := types detect: [:each | each typeOfContainer = OrderedCollection].
	self assert: container = (self container: OrderedCollection
											   elements: {SmallInteger} 
											   keys: {}).												