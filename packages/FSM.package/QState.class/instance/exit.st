dispatching
exit
	"Trigger the reserved #exit signal.
	Answer nil if handled, otherwise a superstate."
	^self trigger: #exit