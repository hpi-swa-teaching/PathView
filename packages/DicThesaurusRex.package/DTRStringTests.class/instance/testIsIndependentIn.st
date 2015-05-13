as yet unclassified
testIsIndependentIn
	self assert: (('self') isIndependentIn: 'self' startingAt: 1).
	self deny: ('self' isIndependentIn: 'self' startingAt: 2).
	self deny: ('self' isIndependentIn: '' startingAt: 1).
	self should: ['' isIndependentIn: 'self' startingAt: 1] raise: Error.
	self assert: ('self' isIndependentIn: 'aSelfReference' startingAt: 2).
	self deny: ('self' isIndependentIn: 'Selfreference' startingAt: 1).
	self deny: ('Selfreference' isIndependentIn: 'SelfReference' startingAt: 1)