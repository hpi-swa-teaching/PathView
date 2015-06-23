as yet unclassified
testShouldToggleIsCollapsedFlag

	| isCollapsed |
	isCollapsed := instance isCollapsed.
	instance toggleNote.
	self assert: [instance isCollapsed = isCollapsed not].
	instance toggleNote.
	self assert: [instance isCollapsed = isCollapsed].