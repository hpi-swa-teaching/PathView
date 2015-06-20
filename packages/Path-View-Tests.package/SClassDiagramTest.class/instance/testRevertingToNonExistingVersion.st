testing
testRevertingToNonExistingVersion
	| check |

	check := false.
	self mock: #savedVersion of: SClassDiagram  toReturn: nil  during:[
	[instance revert] on: Error do: [ check := true].
	self assert: [ check ]]