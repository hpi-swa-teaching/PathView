instance creation
inHand: aHand forText: aText
	
	| morph |
	morph := self new contentsAsIs: aText.
	morph position: aHand position.
	aHand grabMorph: morph.
	^ morph