building
buildValueRangeContracts
	| memberRanges ranges |
	self instVars withIndexDo: [:instVarName :i |
		memberRanges := self valueRangeInfo at: i.
		memberRanges ifNotNil: [
			"remove nil assertions from invariants"
			ranges :=  memberRanges asOrderedCollection 
				reject: [:each | each class == SDefaultRangeProperties].
			self printContractsFor: instVarName 
				valueRanges: ranges]]