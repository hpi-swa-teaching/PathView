morphic-test-helpers
thereIsAStringMorphIn: aCollection with: aString
	| matchString |
	matchString :=  '*' , aString, '*'.
	^ aCollection anySatisfy: [ :morph | 
		(morph isStringMorph
			and: [matchString match: morph contents])
		or: [morph class = NCGrabbableDisplayTextMorph
			and: [matchString match: morph text asString]]]
