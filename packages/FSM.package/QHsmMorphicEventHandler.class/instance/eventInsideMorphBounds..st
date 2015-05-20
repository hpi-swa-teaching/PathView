state handler guards
eventInsideMorphBounds: evt
	^evt isMorphicEvent and: [ morph fullBounds containsPoint: evt position ]