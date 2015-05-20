accessing
isLabeled
	^(owner isKindOf: NCPartsBin) or: [ self valueOfProperty: #labeled ifAbsent: [ false ]].