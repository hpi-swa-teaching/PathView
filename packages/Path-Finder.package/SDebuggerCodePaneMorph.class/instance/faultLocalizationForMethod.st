button actions
faultLocalizationForMethod
	| byteCodes |
	byteCodes := self getCoveredByteCodes.
	byteCodes := self computeOchiaiFor: byteCodes.
	self highlightAnomaliesAtStatements: byteCodes.