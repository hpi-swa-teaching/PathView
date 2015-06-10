as yet unclassified
testRevertingToNonExistingVersion
	| instance check |
	check := true.
	self mock: #savedVersion of: SClassDiagram  toReturn: nil  during: [
	instance := SClassDiagram new.
	[instance revert on: Error do: [ check := false]].
	self assert: [check].]