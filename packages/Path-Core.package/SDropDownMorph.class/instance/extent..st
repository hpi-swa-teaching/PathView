geometry
extent: aPoint

	| oldHeight |
	oldHeight := self height.
	super extent: aPoint.
	"Required for collapse system window"
	self flag: #mpe. "Creates a bug in PathMap Flap - Morph cannot be hided."
"	aPoint y = 0
		ifTrue: [self hide]
		ifFalse: [self show]."
	self menuMorph ifNotNil: [
	self menuMorph 
		position: (self menuMorph position x) @ 
					 (self menuMorph position y + self height - oldHeight).
	self menuMorph submorphs do: [:each | each extent: self extent]]