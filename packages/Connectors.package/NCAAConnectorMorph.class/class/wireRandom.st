instance creation
wireRandom
	"((SimpleButtonMorph newWithLabel: 'Random Connector')
		target: NCAAConnectorMorph;
		actionSelector: #wireRandom) openInHand"
	self random startWiring.