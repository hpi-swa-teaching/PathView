event handling
mouseDownInConnected: anEvent 
	| constraint pos handle |
	pos := anEvent position.	"self griddedPoint:"

	self addedSubmorphs do: [ :h | (h containsPoint: pos)
		ifTrue: [ ^h handleEvent: anEvent  ]].

	constraint := self findEndToDetachNear: pos.
	constraint ifNotNil: [ ^self trigger: #mouseDownNearEnd withArguments: {  constraint. anEvent}].

	handle := line handleForEvent: anEvent.
	handle ifNotNil: [ 
		handle visible: false.
		handle when: #dragStart send: #trigger:with: to: self withArguments: {#dragStart. handle}.
		handle when: #dragStop send: #trigger:with: to: self withArguments: {#dragStop. handle}.
		self addMorphFront: handle.
		self trigger: #startEditing withArguments: { anEvent. handle }.
		anEvent sentTo: handle.	"causes #dragStart"
	 ].
