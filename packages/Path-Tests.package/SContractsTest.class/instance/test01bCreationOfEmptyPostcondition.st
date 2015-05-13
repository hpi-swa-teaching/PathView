testing
test01bCreationOfEmptyPostcondition
	| source |
	self assert: (SSBClassA>>#printString) class = SContractWrapper.
	source := (SSBClassA>>#printString) afterMethod getSource asString.
	self assert: source = 'printString
	<postconditions: #(#sandbox)>'.