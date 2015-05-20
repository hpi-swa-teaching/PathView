*connectors-accessing
playerRepresented
	"Answer the player represented by the receiver. 
	Morphs that serve as references to other morphs reimplement this; 
	by default a morph represents its own player."

	^ resultType == #Player
		ifTrue: [self try]
		ifFalse: [super playerRepresented]