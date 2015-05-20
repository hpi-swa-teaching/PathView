dispatching
enter
	"Trigger the reserved #entry signal.
	Answer nil if handled, otherwise a superstate."
	^self trigger: #entry