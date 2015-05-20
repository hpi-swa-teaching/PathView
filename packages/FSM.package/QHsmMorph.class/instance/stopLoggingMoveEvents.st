logging
stopLoggingMoveEvents
	#(missedMoveEvent moveEventHandled )
		do: [:ea | self stopLogging: ea]