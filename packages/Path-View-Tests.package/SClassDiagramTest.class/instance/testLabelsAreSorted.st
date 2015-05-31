testing
testLabelsAreSorted
	| collectionWithTestClass labels correctLabels |
	
	collectionWithTestClass := OrderedCollection newFrom: { testClass. instance class }.
      correctLabels := OrderedCollection newFrom: {'new...'}.
	correctLabels addAll: (collectionWithTestClass collect: [:each | each name]).

	self mock: #getClasses of: instance class toReturn: collectionWithTestClass during: [
		labels := instance getLabelsFromClasses: (instance getClasses) ifEmpty: [].
		self assert: [ labels hasEqualElements: correctLabels].
	]
