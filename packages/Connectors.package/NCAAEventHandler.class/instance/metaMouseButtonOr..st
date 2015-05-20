state handlers
metaMouseButtonOr: aBlock
	"If the current event is a meta-operation, then handle it and return nil.
	Otherwise, evaluate aBlock."

	event blueButtonChanged ifTrue: [ morph blueButtonDown: event. ^nil ].
	event controlKeyPressed ifTrue: [ morph invokeMetaMenu: event. ^nil ].
	event yellowButtonPressed ifTrue: [ 
		morph yellowButtonDown: event onEnd: (morph findEndNear: event position).
		^nil ].
	morph isPartsDonor ifTrue: [ ^nil ].
	^aBlock value
