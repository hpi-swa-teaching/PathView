*connectors-slot getters/setters
setSourcePlayer: aPlayer
	"Answer the player for the morph at my first end"
	(costume respondsTo: #connectStartTo:)
		ifTrue: [ costume connectStartTo: aPlayer costume ].
		