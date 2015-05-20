dispatching
init
	"Trigger the reserved #init signal, which should be handled (if at all) by sending #newInitialState: to set the proper initial substate.
	Answer nil if handled, otherwise a superstate."
	^self trigger: #init