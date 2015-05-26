testing
testLabelsAreSorted
	| collectionWithTestClass labels |
	
	collectionWithTestClass := OrderedCollection newFrom: { testClass. instance class }.

	self mock: #getClasses of: instance class toReturn: collectionWithTestClass during: [
		labels := instance getLabelsFromClasses: (instance getClasses) ifEmpty: [].
		self assert: [ labels first = 'new...' ].
		self assert: [ (labels at: 2) =  testClass name ].
		self assert: [ labels last = instance class name ]
	]
