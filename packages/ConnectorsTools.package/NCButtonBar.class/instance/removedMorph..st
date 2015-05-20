buttons
removedMorph: aMorph 
	self bounds: (self bounds extendBy: (
		self bounds isTall ifTrue: [ 0 @ aMorph height negated ]
		ifFalse: [ aMorph width negated @ 0 ])).
	super removedMorph: aMorph.
	self fixLayoutFrames