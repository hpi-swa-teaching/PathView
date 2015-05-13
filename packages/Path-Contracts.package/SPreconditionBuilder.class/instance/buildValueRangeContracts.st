building
buildValueRangeContracts
	| argumentRange |
	self arguments withIndexDo: [:arg :i | 
		argumentRange := self valueRangeInfo at: i.
		argumentRange ifNotNil: [
			self printContractsFor: arg 
				valueRanges: argumentRange asOrderedCollection]].