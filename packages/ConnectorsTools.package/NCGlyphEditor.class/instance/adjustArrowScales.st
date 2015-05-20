button actions
adjustArrowScales
	sampleLine ifNil: [ ^self ].
	sampleLine changeArrowScaleInteractively: ActiveHand lastEvent.