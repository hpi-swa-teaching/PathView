state handlers
stateGlobal: evt 
	evt caseOf: {
		[#ownerChangedToPasteUp] -> 
			[morph pasteUpChanged: event.
			^ nil].
		[#step] -> [^ nil].
		[#suspendEventHandler] -> 
			[Cursor normal show.
			^ nil]}
		 otherwise: [].
	event isMorphicEvent
		ifTrue: [morph addedSubmorphs
				do: [:h | ((evt == #mouseLeave) or: [ (h containsPoint: event position) ])
						ifTrue: [h handleEvent: event.
							^ nil]]].
	^ evt caseOf: {
		[#mouseEnter] -> [nil].
		[#mouseLeave] -> [nil].
		[#mouseDown] -> [self
			metaMouseButtonOr: [self top]].
		[#keystroke] -> 
			[event keyValue == 27
				ifTrue: [morph
						yellowButtonDown: event
						onEnd: (morph findEndNear: event position).
					nil]]}
		 otherwise: [super stateGlobal: evt]