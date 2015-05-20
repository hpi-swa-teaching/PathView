parts bin
supplementaryPartsDescriptions

	Preferences eToyFriendly ifTrue: [ ^#() ].

	^ {
		DescriptionForPartsBin
				formalName: 'Smart Label'
				categoryList: #(Connectors)
				documentation: 'A label that can be attached to another morph by dropping or menu choice and will follow the morph to which it is attached, trying to stay out of the way.'
				globalReceiverSymbol: #NCSmartLabelMorph 
				nativitySelector: #newStandAlone.
	}