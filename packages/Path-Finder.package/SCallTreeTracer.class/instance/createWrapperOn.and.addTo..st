tracing
createWrapperOn: aClass and: aSelector addTo: aCollection
	| wrapper |
	(self isOnBlacklist: (MethodReference class: aClass selector: aSelector))
		ifFalse: [wrapper := self getCallWrapperClass 
								on: aSelector inClass: aClass withTracer: self.
				wrapper ifNotNil: [
					wrapper selectedView: self viewMode.
					aCollection add: wrapper.
					wrapper install]].