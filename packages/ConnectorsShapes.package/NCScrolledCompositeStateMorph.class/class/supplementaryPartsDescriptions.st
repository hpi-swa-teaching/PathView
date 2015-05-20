parts bin
supplementaryPartsDescriptions
	"Extra items for parts bins"
	^Preferences eToyFriendly ifTrue: [ #() ]
		ifFalse: [ {
	DescriptionForPartsBin
		formalName: 'Scrolled State'
		categoryList: #('UML')
		documentation: 'A UML State shape with scrollbars'
		globalReceiverSymbol: #NCScrolledCompositeStateMorph 
		nativitySelector: #authoringPrototype  } ]
