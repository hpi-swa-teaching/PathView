state handlers
stateTop: anEvent 
	"This should not be overridden by subclasses."

	(self class reservedEventTypes includes: anEvent eventType) ifTrue: [^nil].
	^self handleUnhandledEvent: anEvent