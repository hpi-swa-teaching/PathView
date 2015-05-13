stepping
steppingSelection: range 
	range
		ifNil: [self codePane definition
				setSelection: (1 to: 0)]
		ifNotNil: [| tmp |
			tmp := range.
			range = #all
				ifTrue: [tmp := 1 to: self codePane definition text size].
			self codePane definition setSelection: tmp]