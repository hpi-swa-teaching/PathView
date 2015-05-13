testing
test01cCreationOfEmptyInvariant
	| source |
	self assert: SSBClassC organization invariantGroups = #(#sandbox).
	source :=  SSBClassC organization invariantMethod getSource asString.
	self assert: source = 'SSBClassC
	<invariants: #(#sandbox)>
	"Type Contracts"
	"Value Range Contracts"'