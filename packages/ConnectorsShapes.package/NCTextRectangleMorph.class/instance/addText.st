text morphs-add/remove
addText
	| ix tm |
	ix := self addText: ''.
	tm := self textMorphAt: ix.
	owner ifNotNil: [ self world activeHand newKeyboardFocus: tm. ].
	tm editor
