instance creation
supplementaryPartsDescriptions
	"Extra items for parts bins"
	^Preferences eToyFriendly ifTrue: [ #() ]
		ifFalse: [ {
	DescriptionForPartsBin
		formalName: 'Note'
		categoryList: #('UML')
		documentation: 'A UML note shape'
		globalReceiverSymbol: #NCNoteMorph 
		nativitySelector: #authoringPrototype  } ]

	