instance creation
supplementaryPartsDescriptions

	Preferences eToyFriendly ifTrue: [ ^#() ].

	^ {
			DescriptionForPartsBin
					formalName: 'Label'
					categoryList: #(Connectors)
					documentation: 'A label that can be attached to another morph by dropping or menu choice and will follow the morph to which it is attached.'
					globalReceiverSymbol: #NCLabelMorph 
					nativitySelector: #newStandAlone.	
	}