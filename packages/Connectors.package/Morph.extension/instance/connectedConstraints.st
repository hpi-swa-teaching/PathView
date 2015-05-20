*connectors-queries
connectedConstraints
	"Answer the constraints that have me as an input"
	| retval ccs |
	ccs := self valueOfProperty: #connectedConstraints ifAbsent: [ ^EmptyArray ].
	retval := IdentitySet new: ccs size.
	ccs do: [ :ea | ea notNil ifTrue: [ retval add: ea ]].
	retval isEmpty ifTrue: [ self removeProperty: #connectedConstraints ].
	^retval