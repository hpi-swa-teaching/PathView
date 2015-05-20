*connectors-embeddings
shouldAddSlotForEmbeddedMorph: aMorph 
	"Answer true if my player should add a slot for the embedded morph's 
	player. Don't do this if neither I nor aMorph is scripted, unless aMorph 
	wantsConnectionWhenEmbedded. Also don't do this if my player already 
	points to aMorph's player."
	| myPlayer itsPlayer |
	itsPlayer := aMorph player.
	myPlayer := self player.
	(aMorph wantsConnectionWhenEmbedded
			or: [itsPlayer belongsToUniClass
					or: [myPlayer belongsToUniClass]])
		ifFalse: [^ false].
	^ myPlayer isNil
		or: [itsPlayer isNil
				or: [(myPlayer pointsTo: itsPlayer) not]]