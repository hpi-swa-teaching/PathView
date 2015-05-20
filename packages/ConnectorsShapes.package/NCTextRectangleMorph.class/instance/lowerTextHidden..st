accessing
lowerTextHidden: aBoolean
	| secondTM |
	secondTM := self textMorphAt: 2.
	secondTM ifNil: [ ^self ].
	secondTM := (submorphs indexOf: secondTM) - 1.

	submorphs withIndexDo: [ :m :i |
		i >= secondTM ifTrue: [m visible: aBoolean not].
	].
	self layoutChanged