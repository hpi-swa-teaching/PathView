testing
testPrintString

	| a |
	a := SSBClassA new.
	self assert: a asString = '0'.
	a myValue: 123.
	self assert: a asString = '123'.
	self assert: SSBClassB new asString = 'a SSBClassB'.