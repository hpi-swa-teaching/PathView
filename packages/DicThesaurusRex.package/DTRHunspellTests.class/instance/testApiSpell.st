tests
testApiSpell
	self assert: 0 equals: (sut apiSpell: sut handle word: 'aplpe').
	self deny: (sut apiSpell: sut handle word: 'apple') isZero