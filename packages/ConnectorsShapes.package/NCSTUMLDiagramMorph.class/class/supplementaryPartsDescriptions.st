instance creation
supplementaryPartsDescriptions

	Preferences eToyFriendly ifTrue: [ ^#() ].

	^  { DescriptionForPartsBin
		formalName: 'STClass'
		categoryList: #(UML)
		documentation: 'A UML class symbol that can read its text from a Squeak class'
		globalReceiverSymbol: #NCSTUMLDiagramMorph 
		nativitySelector: #newUMLClassSymbol }
