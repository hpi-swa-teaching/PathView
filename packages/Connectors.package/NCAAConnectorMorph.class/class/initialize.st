class initialization
initialize
	"NCAAConnectorMorph initialize"

	Preferences addPreference: #useSmartLabels
		category:  'connectors'
		default:  false
		balloonHelp: 'if set, Connectors will use labels that try to re-position themselves to stay out of the way.'.

	Preferences addPreference: #alwaysShowConnectionVocabulary
		category:  'connectors'
		default:  false
		balloonHelp: 'if set, viewers will display the ''connection'' vocabulary even for Morphs that aren''t connected to by Connectors.'.

	ScriptingSystem addCustomEventFor: self named: #connectedTo help: 'immediately after a connector has connected to me' targetMorphClass: Morph.
	ScriptingSystem addCustomEventFor: self named: #disconnectedFrom help: 'immediately before a connector is going to disconnect from me' targetMorphClass: Morph.
	ScriptingSystem addCustomEventFor: self named: #sourceConnected help: 'immediately after my first end has been connected' targetMorphClass: self.
	ScriptingSystem addCustomEventFor: self named: #sourceDisconnecting help: 'immediately before my first end is going to be disconnected' targetMorphClass: self.
	ScriptingSystem addCustomEventFor: self named: #destinationConnected help: 'immediately after my second end has been connected' targetMorphClass: self.
	ScriptingSystem addCustomEventFor: self named: #destinationDisconnecting help: 'immediately before my second end is going to be disconnected' targetMorphClass: self.
	ScriptingSystem addCustomEventFor: self named: #attachmentOwnerChanged help: 'when either of the morphs to which I''m connected have changed their owner or been grabbed or dropped with the hand.' targetMorphClass: self.
	Smalltalk addToStartUpList: self.
	self initializeArrowDictionary.