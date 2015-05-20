event handling
handleListenEvent: anEvent 
	| rect |
	self trackFocusFromEvent: anEvent.
	self hasFocus
		ifTrue: [(anEvent isMouseDown
					and: [self hasHalo not])
				ifTrue: [rect := self focusBoundsFor: anEvent.
					(rect containsPoint: anEvent position)
						ifFalse: [anEvent hand releaseKeyboardFocus: self]]].
