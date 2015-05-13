testing
testModelView

	| b |
	b := SSBClassB new.
	self a myValue: 1.
	self assert: b myValue isNil.
	self a addDependent: b.
	self a myValue: 2.
	self assert: b myValue = 2.