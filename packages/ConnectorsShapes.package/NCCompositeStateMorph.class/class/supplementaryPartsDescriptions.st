instance creation
supplementaryPartsDescriptions
	"Extra items for parts bins"
	Preferences eToyFriendly ifTrue: [ ^#() ].

	^ {DescriptionForPartsBin
		formalName: 'Composite State'
		categoryList: #('UML')
		documentation: 'A UML composite state shape'
		globalReceiverSymbol: #NCCompositeStateMorph
		nativitySelector: #newCompositeState.
DescriptionForPartsBin
		formalName: 'UML Package'
		categoryList: #('UML')
		documentation: 'A UML package shape'
		globalReceiverSymbol: #NCCompositeStateMorph
		nativitySelector: #newUMLPackage.
}