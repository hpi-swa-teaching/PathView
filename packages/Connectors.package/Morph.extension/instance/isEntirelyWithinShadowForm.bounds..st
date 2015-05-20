*connectors-geometry
isEntirelyWithinShadowForm: itsShadow bounds: itsBounds 
	(itsBounds containsRect: self fullBounds) ifFalse: [^false].
	^self isEntirelyWithinShadowForm: itsShadow