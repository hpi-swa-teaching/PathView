event handling
handleInteraction: interActionBlock fromEvent: evt
	"Overridden to pass along a model to the editor for, eg, link resolution, doits, etc"
	self trackFocusFromEvent: evt.
	self hasFocus ifFalse: [ ^self ].

	self editor model: self.  "For evaluateSelection, etc"
	^ super handleInteraction: interActionBlock fromEvent: evt