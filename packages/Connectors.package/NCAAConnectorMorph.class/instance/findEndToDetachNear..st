event handling
findEndToDetachNear: position
	"If there is a connected constraint near the given position, and I will allow its detachment, then answer that constraint.
	Otherwise answer nil."
	| constraint |
	constraint := self findEndNear: position.
	^constraint ifNotNil:  [ (self allowsDetachmentOfConstraint: constraint) ifTrue: [ constraint ] ifFalse: [ nil ]].
