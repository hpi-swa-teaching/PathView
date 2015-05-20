*connectors-slot getters/setters
getSourcePlayer
	"Answer the player for the morph at my first end"
	| source |
	source := self getValueFromCostume: #sourceMorph.
	^source ifNil: [ costume presenter standardPlayer ]
		ifNotNil: [ source assuredPlayer ]