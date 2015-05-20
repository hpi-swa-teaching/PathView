new-morph participation
supplementaryPartsDescriptions
	| descriptions |
	"PartsBin clearThumbnailCache; cacheAllThumbnails"
	descriptions := OrderedCollection new.
	descriptions addAll: {
	DescriptionForPartsBin
		formalName: 'Connector'
		categoryList: #('Connectors' )
		documentation: 'A basic Connector'
		globalReceiverSymbol: #NCAAConnectorMorph
		nativitySelector: #newStandAlone.

	DescriptionForPartsBin
		formalName: 'ConnectorArrow'
		categoryList: #('Connectors' )
		documentation: 'A basic Connector with an arrowhead'
		globalReceiverSymbol: #NCAAConnectorMorph
		nativitySelector: #newWithArrow.
		
	DescriptionForPartsBin
		formalName: 'Curvy Connector'
		categoryList: #('Connectors' )
		documentation: 'A basic Connector that bends smoothly'
		globalReceiverSymbol: #NCAAConnectorMorph
		nativitySelector: #newCurvyConnector.

	DescriptionForPartsBin
		formalName: 'Curvy ConnectorArrow'
		categoryList: #('Connectors' )
		documentation: 'A basic smooth Connector with an arrowhead'
		globalReceiverSymbol: #NCAAConnectorMorph
		nativitySelector: #newCurvyArrow.
	}.

	(Flaps respondsTo: #newNCPartsBinFlap) ifTrue: [
		descriptions add: (
	(DescriptionForPartsBin
		formalName: 'Button Flap'
		categoryList: #('Connectors' )
		documentation: 'A blank buttton flap'
		globalReceiverSymbol: #Flaps
		nativitySelector: #newNCPartsBinFlap)
			sampleImageForm: self buttonFlapImage; yourself) ].

	(Flaps respondsTo: #newConnectorsFlap) ifTrue: [
		descriptions add: (
	(DescriptionForPartsBin
		formalName: 'Connectors Flap'
		categoryList: #('Connectors' )
		documentation: 'A pre-loaded Connectors flap'
		globalReceiverSymbol: #Flaps
		nativitySelector: #newConnectorsFlap)
			sampleImageForm: self connectorsFlapImage; yourself) ].

	Smalltalk at: #NCMakerButton ifPresent: [ :ncmb |
		descriptions addAll: {
	DescriptionForPartsBin
		formalName: 'Connector Button'
		categoryList: #('Connectors' )
		documentation: 'A Maker Button with a Connector loaded'
		globalReceiverSymbol: #NCAAConnectorMorph
		nativitySelector: #newMakerButton.
	DescriptionForPartsBin
		formalName: 'Random Connectors'
		categoryList: #('Connectors' )
		documentation: 'A button that makes fancy Connectors at random'
		globalReceiverSymbol: #NCAAConnectorMorph
		nativitySelector: #newRandomButton.
		}
	].
	^descriptions
