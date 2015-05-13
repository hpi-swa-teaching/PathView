event handling
handleKeystroke: anEvent
	"Handle the keystroke using the class-side keyMap.
	This may contain characters or key strings. Blocks can take self and the event as arguments"
	
	{ anEvent keyCharacter. anEvent keyString }
		anySatisfy: [ :key |
			(self class keyMap
				at: key
				ifPresent: [ :block | 
					block valueWithEnoughArguments: { self . anEvent }.
					true ]
				ifAbsent: [ false ]) ].