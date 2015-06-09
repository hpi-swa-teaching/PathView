layout force-based
vectorTo: otherMorph
	"Pretty hacky: if receiver or otherMorph are grabbed by the hand,
	transpose their position to be inside the ClassDiagramMorph. Assumes, that the hand morph can only have one submorph."
	
	| center1 center2 result |
	center1 := self center.
	center2 := otherMorph center.
	self owner notNil & otherMorph owner notNil ifTrue: [
		self owner isHandMorph ifTrue: [ center1 := center1 - otherMorph pasteUpMorph boundsInWorld topLeft ].
		otherMorph owner isHandMorph ifTrue: [ center2 := center2 - self pasteUpMorph boundsInWorld topLeft ] ].
	result := center1 - center2.
	result = (0@0) ifTrue: [ result := 0.1 @ 0.1 ]. "Fake small vector to avoid zero-divide when calling #normalized on the result."
	^ result