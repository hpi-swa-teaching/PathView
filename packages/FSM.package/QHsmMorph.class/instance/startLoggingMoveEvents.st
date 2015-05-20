logging
startLoggingMoveEvents
	"missedMoveEvent moveEventHandled missedStepEvent stepEventHandled"
	#(missedMoveEvent moveEventHandled )
		do: [:ea | self startLogging: ea]