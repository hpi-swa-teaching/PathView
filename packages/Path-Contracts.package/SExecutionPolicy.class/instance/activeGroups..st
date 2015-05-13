accessing
activeGroups: aGroupOrCollection

	aGroupOrCollection isSymbol
		ifTrue: [activeGroups := (Set with: aGroupOrCollection)]
		ifFalse: [activeGroups := aGroupOrCollection]
