inconsistencies
indicateInheritanceConflict: aMorph

	self inheritanceStore do: [:spec || exclamation |
		exclamation := self exclamationMark: 'Used to inherit from: ', spec for: aMorph.
		(SInheritanceConnector openFor: aMorph classMorph connectedTo: exclamation)
			color: Color red]
