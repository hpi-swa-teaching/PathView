*connectors-queries
constraints
	"Answer a Set of all of my submorphs that are constraints"

	| retval |
	retval := Set new.
	self allMorphsDo: [ :ea | ea isConstraint ifTrue: [ retval add: ea ] ].
	^retval