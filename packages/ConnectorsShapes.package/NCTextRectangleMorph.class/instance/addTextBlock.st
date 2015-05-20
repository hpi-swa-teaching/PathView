text morphs-add/remove
addTextBlock
	| ix |
	ix := self addTextBlock: ''.
	owner ifNotNil: [
		self world activeHand newKeyboardFocus: (self textMorphAt: ix) 
	].
	^ix