as yet unclassified
testShouldAllowChangingTheSuperclass
	| newSuperclassMorph oldSuperclass |
	newSuperclassMorph := klass on: Morph.
	oldSuperclass := testClass superclass.
	instance newSuperclassTarget: newSuperclassMorph.
	[self assert: [testClass superclass = Morph]]
		ensure: [klass superclass: oldSuperclass].