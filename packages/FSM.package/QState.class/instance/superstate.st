accessing
superstate
	"Answer my superstate.
	Default is to return the fsm's top state."
	| superstate |
	superstate := self trigger: #empty.
	^superstate isQState
		ifTrue: [ superstate ]
		ifFalse: [ superstate := fsm top.
			self = superstate ifTrue: [ nil ] ifFalse: [ superstate ]]