*connectors-geometry
isEntirelyWithinOutlineOf: aMorph

	| itsBounds |
	itsBounds := aMorph fullBounds.
	(itsBounds containsRect: self fullBounds) ifFalse: [ ^false ].
	^self isEntirelyWithinShadowForm: aMorph shadowForm