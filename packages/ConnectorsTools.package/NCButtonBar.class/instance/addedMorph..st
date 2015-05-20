buttons
addedMorph: aMorph 
	self bounds: (self bounds extendBy: (
		self bounds isTall ifTrue: [ 0 @ aMorph height ]
		ifFalse: [ aMorph width @ 0 ])).
	super addedMorph: aMorph.
	self fixLayoutFrames