logging
startLoggingAll
	"missedMoveEvent moveEventHandled missedStepEvent stepEventHandled"
	#(#eventHandled #missedEvent #alreadyHandledEvent #newInitialState #newState #pluggedEventHandled #action #deferEvent #debug )
		do: [:ea | self startLogging: ea]