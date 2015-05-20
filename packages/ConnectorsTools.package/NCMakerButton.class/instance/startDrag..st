events
startDrag: evt
	triggerEventType := #startDrag.
	super startDrag: evt.
	oldColor ifNotNil: [
		self color: oldColor.
		oldColor := nil.
		self doButtonAction ].

