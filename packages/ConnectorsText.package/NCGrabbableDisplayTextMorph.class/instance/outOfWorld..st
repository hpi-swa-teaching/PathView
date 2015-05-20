initialization
outOfWorld: aWorld
	aWorld currentHand removeMouseListener: self.
	super outOfWorld: aWorld