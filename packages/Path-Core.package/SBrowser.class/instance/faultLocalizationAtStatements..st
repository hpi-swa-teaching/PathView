coverage list
faultLocalizationAtStatements: aTracer
	| byteCodes |
	self flag: #mpe. "ToDo: Redundancy to SDebuggerCodePane (and following methods)"
	self selectedMethodReference ifNil: [^ self inform: 'Select a method first.'].
	byteCodes := self getCoveredByteCodes.
	byteCodes := self computeOchiaiFor: byteCodes with: aTracer.
	self highlightAnomaliesAtStatements: byteCodes.