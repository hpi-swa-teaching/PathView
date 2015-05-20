events
reservedEventTypes
	"These events are sent to state handlers for special purposes"
	^{
		#empty.	"Return superstate (should never be handled)"
		#init.		"Do initial transition"
		#entry.	"Do state entry"
		#exit.		"Do state exit"
	}