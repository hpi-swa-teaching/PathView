testing
test01aCreationOfEmptyPrecondition
	| source |
	self assert: (SSBClassA>>#printString) class = SContractWrapper.
	source := (SSBClassA>>#printString) beforeMethod getSource asString.
	self assert: source = 'printString
	<preconditions: #(#sandbox)>
	"Type Contracts"
	"Value Range Contracts"'	