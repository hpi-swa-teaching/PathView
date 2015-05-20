*connectors-slot getters/setters
setDestinationPlayer: aPlayer
	"Answer the player for the morph at my first end"
	(costume respondsTo: #connectFinishTo:)
		ifTrue: [ costume connectFinishTo: aPlayer costume ].
		