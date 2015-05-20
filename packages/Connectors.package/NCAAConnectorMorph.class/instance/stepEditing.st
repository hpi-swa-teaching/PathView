stepping and presenter
stepEditing
	"Called upon step in Editing state."
	| numberOfConnections connections |
	owner
		ifNil: [^ self].
	"don't bother doing anything if unowned"
	self needsOwnerSet
		ifFalse: [^ self].
	connections := self validConnections.
	numberOfConnections := connections size.
	owner isHandMorph
		ifFalse: [self setCorrectOwnerForConnections: connections].
	numberOfConnections == 0
		ifTrue: [^ self trigger: #bothEndsGone].
	numberOfConnections == 1
		ifTrue: [^ self trigger: #endGone].
