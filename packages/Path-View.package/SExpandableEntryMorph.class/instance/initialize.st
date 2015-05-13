initialization
initialize
	
	super initialize.
	expanded := self class expandedByDefault.
	needReexpand := false.
	expanded ifTrue: [ self updateEntries ].