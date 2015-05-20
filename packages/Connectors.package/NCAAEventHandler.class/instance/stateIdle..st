state handlers
stateIdle: evt 
	evt caseOf: { 
				[#init] -> [^ self newInitialState: self determineConnectionState ].
				[#entry]->[ morph fixDegenerateLine ].
				[#ownerChangedToHand] -> [^self newState: #DraggingMorph].
				[#mouseDownNearEnd] -> [^self newState: #DraggingEnd].
				[#wireFrom] -> [^self newState: #WiringEnd].
				[#wireFinish] -> [ ^self newState: #WiringEnd ].
				[#keystroke] -> [ morph keyStroke: event. ^nil ].
	}
		otherwise: [].

	"determine connection state"
	(#(#connectEndTo #createdConnected #endGone #bothEndsGone) includes: evt) 
		ifTrue: [^ self newState: self determineConnectionState].
	^self global