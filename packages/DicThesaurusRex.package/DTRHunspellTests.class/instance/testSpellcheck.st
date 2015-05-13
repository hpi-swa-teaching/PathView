tests
testSpellcheck
	self deny: (sut spell: 'aplpe').
	self assert: (sut spell: 'apple')