inconsistencies
indicateMissingSourceCode: aMorph

	self sourceCodeStore do: [:spec || exclamation |
		exclamation := (SExclamationMark withText: ('Missing source code method ', spec first) from: aMorph)
							topLeft: aMorph topLeft + (-200 to: 200) atRandom.
		(SNoteConnector openFor: aMorph connectedTo: exclamation)
			color: Color red].