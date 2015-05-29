updating
restoreConsistency
	"Return true, if any action has been taken to restore consistency. For subclass-overrides to know if anything else has to be done."
	
	| result |
	result := self isConsistent not.
	result ifTrue: [ self abandon ].
	^ result