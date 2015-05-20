dispatching
wantsAutoFocusStartEvent: aMouseButtonEvent
	aMouseButtonEvent hand keyboardFocus == self
		ifFalse: [ self releaseCachedState. ^false ].
	^super wantsAutoFocusStartEvent: aMouseButtonEvent