instance creation
supplementaryPartsDescriptions

	| descriptions |
	descriptions := OrderedCollection withAll: {
		DescriptionForPartsBin
				formalName: 'ButtonBar'
				categoryList: #(Connectors)
				documentation: 'An empty buttonBar that you can add to'
				globalReceiverSymbol: #NCButtonBar
				nativitySelector: #new.
	}.

	Preferences eToyFriendly ifFalse: [
		descriptions addAll: {
			DescriptionForPartsBin
				formalName: 'FSM ButtonBar'
				categoryList: #('UML')
				documentation: 'A buttonBar for State Machine drawings'
				globalReceiverSymbol: #NCButtonBar
				nativitySelector: #newFSMToolbar.
			DescriptionForPartsBin
					formalName: 'Class ButtonBar'
					categoryList: #('UML')
					documentation: 'A buttonBar for UML Class Diagrams'
					globalReceiverSymbol: #NCButtonBar
					nativitySelector: #newClassDiagramToolbar. 
		}.

		(Flaps respondsTo: #newFSMConnectorsFlap) ifTrue: [
			descriptions add: (
		(DescriptionForPartsBin
			formalName: 'FSM Flap'
			categoryList: #('UML' )
			documentation: 'A pre-loaded Connectors flap for state machine drawings'
			globalReceiverSymbol: #Flaps
			nativitySelector: #newFSMConnectorsFlap) sampleImageForm: self fsmFlapImage; yourself) ].

		(Flaps respondsTo: #newClassDiagramConnectorsFlap) ifTrue: [
			descriptions add: (
		(DescriptionForPartsBin
			formalName: 'Class diagram Flap'
			categoryList: #('UML' )
			documentation: 'A pre-loaded Connectors flap for UML class diagram drawings'
			globalReceiverSymbol: #Flaps
			nativitySelector: #newClassDiagramConnectorsFlap) sampleImageForm: self classDiagramFlapImage; yourself) ].
		].

	^descriptions.