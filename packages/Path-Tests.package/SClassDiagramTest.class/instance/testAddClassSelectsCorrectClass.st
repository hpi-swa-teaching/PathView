testing
testAddClassSelectsCorrectClass
	| collectionWithTestClass moreThanOneClass labels hand |
	
	collectionWithTestClass := OrderedCollection newFrom: { testClass. instance class }.
	moreThanOneClass := 2.

	self mock: #chooseFrom:title: of: UIManager default class toReturn: moreThanOneClass during: [
	self mock: #getClasses of: instance class toReturn: collectionWithTestClass during: [
		labels := instance getLabelsFromClasses: (instance getClasses) ifEmpty: [].
		instance addClass.

		hand := self currentHand submorphs first.
		self assert: [ hand class name = SClassMorph name ].
		self assert: [ hand klass name = (labels at: moreThanOneClass) ]
	] ].
