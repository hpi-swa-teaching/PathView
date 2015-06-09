inconsistencies
indicateMissingAssociationClasses: aMorph

	self associationsStore do: [:spec | | message exclamation |
		"Find out, whether the association-partner-class or the variable itself were deleted. Both cases are handled here."
		message := (Smalltalk classNamed: spec third asSymbol)
			ifNil: [ 'Association partner ', spec third, ' deleted (was connected over variable ', spec first, ').' ]
			ifNotNil: [ 'Association to ', spec third, ' deleted (was connected over variable ', spec first, ').' ].
		exclamation := self exclamationMark: message for: aMorph.
		(SAssociationConnector openFor: aMorph connectedTo: exclamation variableName: spec first variableType: spec second)
			color: Color red].