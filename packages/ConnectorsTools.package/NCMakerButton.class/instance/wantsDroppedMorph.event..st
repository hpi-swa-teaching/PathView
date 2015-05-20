dropping/grabbing
wantsDroppedMorph: aMorph event: evt
	(aMorph isHandleMorph) ifTrue: [^false ].
	^super wantsDroppedMorph: aMorph event: evt