instance creation
random
	"NCAAConnectorMorph random startWiring"
	"((SimpleButtonMorph newWithLabel: 'Random Connector')
		target: NCAAConnectorMorph;
		actionSelector: #wireRandom) openInHand"
	^(self new)
		color: Color random;
		lineWidth: (1 to: 20) atRandom;
		borderWidth: (1 to: 4) atRandom;
		arrowNames: {
			self arrowDictionary keys atRandom.
			self arrowDictionary keys atRandom };
		yourself