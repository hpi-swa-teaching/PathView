private
handleBasicEvent: anEvent eventOrType: anEventOrType 
	| lastEvent |
	handled := true.
	lastEvent := event.
	event := anEvent.
	self dispatch: anEventOrType.
	event := lastEvent.
	self handlerAt: anEventOrType eventType
		ifPresent: 
			[:h | 
			h valueWithEnoughArguments: { 
						anEvent.
						morph}.
			self log: #pluggedEventHandled items: { anEvent. anEventOrType eventType }.
			^true].
	handled 
		ifFalse: [^morph missedEvent: anEvent type: anEventOrType eventType].
	^true