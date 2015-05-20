debug and other
buildDebugMenu: aHand
	| menu |
	menu _ super buildDebugMenu: aHand.
	menu addLine.
	menu add: 'browse state handler class' translated target: self eventHandler selector: #browseHierarchy.
	menu add: 'view state hierarchy' translated target: self selector: #viewStateHierarchy.
	menu add: 'view log' translated target: self selector: #viewLog.
	menu add: 'clear log' translated target: self selector: #clearLog.
	menu addLine.
	menu add: 'start logging all but move and step events' translated target: self selector: #startLoggingAll.
	menu add: 'start logging move events' translated target: self selector: #startLoggingMoveEvents.
	menu add: 'start logging step events' translated target: self selector: #startLoggingStepEvents.
	menu add: 'start logging event...' translated target: self selector: #startLoggingSelectedEvent.
	menu addLine.
	"self loggingTypes isEmpty ifFalse: ["
		menu add: 'stop logging all events' translated target: self selector: #stopLoggingAll.
		menu add: 'stop logging event...' translated target: self selector: #stopLoggingSelectedEvent.
	"]."
	^menu