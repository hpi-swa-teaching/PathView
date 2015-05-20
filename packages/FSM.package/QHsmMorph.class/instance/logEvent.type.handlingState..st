logging
logEvent: evt type: evtType handlingState: selector

	self log: (evtType == #step ifTrue: [ #stepEventHandled ] ifFalse: [ #eventHandled])
		items: { evt. evtType. selector }
