event handling
missedEvent: anEvent type: aSymbol
	"anEvent was not handled by either my state machine or its pluggable handlers.
	The default is to not handle the event.
	This should return true if the event is handled."

	(#(mouseMove mouseOver) includes: aSymbol)
		ifTrue: [ self log: #missedMoveEvent items: { self currentState. anEvent. aSymbol } ]
		ifFalse: [ self log: #missedEvent items: { self currentState. anEvent. aSymbol } ].

	^false