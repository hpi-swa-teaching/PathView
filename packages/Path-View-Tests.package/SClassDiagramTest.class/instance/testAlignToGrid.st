testGridding
testAlignToGrid
		
	| testMorph gridModulus offset |
	
	gridModulus := instance gridModulus.
	offset := 1@1.
	testMorph := Morph new position: gridModulus + offset.
	instance
		griddingOnOff;
		alignToGrid: testMorph.
	self assert: [testMorph position = gridModulus]
		description: 'AlignToGrid should set the Morph position aligned to the grid modulus'