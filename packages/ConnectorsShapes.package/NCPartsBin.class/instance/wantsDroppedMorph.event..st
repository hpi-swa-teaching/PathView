drag & drop
wantsDroppedMorph: aMorph event: evt
	"Answer whether the receiver would like to accept the given morph.
	We're picky, and only want a dropped morph if a button does."

	(aMorph isHandleMorph) ifTrue: [ ^ false].
	
	(submorphs
		anySatisfy: [ :ea | (ea containsPoint: evt position)
			and: [ ea wantsDroppedMorph: aMorph event: evt ] ]) ifTrue: [ ^true ].
		
	^super wantsDroppedMorph: aMorph event: evt

