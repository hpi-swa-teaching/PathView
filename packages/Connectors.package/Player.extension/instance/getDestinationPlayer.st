*connectors-slot getters/setters
getDestinationPlayer
	"Answer the player for the morph at my last end"
	| dest |
	dest := self getValueFromCostume: #destinationMorph.
	^dest ifNil: [ costume presenter standardPlayer ]
		ifNotNil: [ dest assuredPlayer ]