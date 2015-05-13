testing
test02cGetReturnRanges
	| range | 
	self run: SSBValueRangeTest with: #testBoolean.
	range := self bucket returnFor: SSBClassD>>#myValue3:.
	self assert: range isNil.