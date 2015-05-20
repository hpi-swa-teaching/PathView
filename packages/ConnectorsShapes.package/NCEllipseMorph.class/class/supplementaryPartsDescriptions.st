parts bin
supplementaryPartsDescriptions
	"Extra items for parts bins"
	| descriptions |
	descriptions := OrderedCollection new.

	descriptions add: (
	DescriptionForPartsBin
		formalName: 'Text Ellipse'
		categoryList: #('Connectors')
		documentation: 'An elliptical or circular shape with text'
		globalReceiverSymbol: #NCEllipseMorph 
		nativitySelector: #newStandAlone ).

	Preferences eToyFriendly ifTrue: [ ^descriptions ].

	descriptions addAll: {
	DescriptionForPartsBin
		formalName: 'End State'
		categoryList: #('UML')
		documentation: 'A UML end state shape'
		globalReceiverSymbol: #NCEllipseMorph 
		nativitySelector: #newEndState.
	DescriptionForPartsBin
		formalName: 'Start State'
		categoryList: #('UML')
		documentation: 'A UML start state shape'
		globalReceiverSymbol: #NCEllipseMorph 
		nativitySelector: #newStartState. }.

	^descriptions