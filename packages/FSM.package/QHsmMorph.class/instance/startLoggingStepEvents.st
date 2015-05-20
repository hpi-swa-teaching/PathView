logging
startLoggingStepEvents
	#(missedStepEvent stepEventHandled)
		do: [:ea | self startLogging: ea]