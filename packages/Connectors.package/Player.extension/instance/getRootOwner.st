*connectors-slot getters/setters
getRootOwner
	"Answer the player for my root morph."
	| source |
	source := self getValueFromCostume: #rootInPasteUp.
	^source ifNil: [ costume presenter standardPlayer ]
		ifNotNil: [ source assuredPlayer ]