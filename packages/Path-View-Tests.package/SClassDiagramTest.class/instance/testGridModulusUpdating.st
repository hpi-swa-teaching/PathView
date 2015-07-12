testGridding
testGridModulusUpdating
	
	| testGridModulus originalModulus | 
	testGridModulus := 100@100.
	originalModulus := instance class gridModulus.
	self
		deny: [originalModulus = testGridModulus]
		description: 'Grid modulus for testing must be different to the default value'.	
	instance class gridModulus: testGridModulus.
	[ self assert: [instance gridModulus = testGridModulus]
		description: 'After changing the gridModulus in the class it should be updated in all Instances' ]
	ensure: [
		instance class gridModulus: originalModulus
	]
		