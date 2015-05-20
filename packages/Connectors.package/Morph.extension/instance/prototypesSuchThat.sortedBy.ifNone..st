*connectors-gestures
prototypesSuchThat: selectionBlock sortedBy: blockList ifNone: defaultBlock
	| allSelections sortedSelections |
	allSelections := self prototypesSuchThat: selectionBlock ifNone: [ #() ].
	sortedSelections := OrderedCollection new.
	blockList do: [ :block |
		sortedSelections addAllLast: ((allSelections select: block) copyWithoutAll: sortedSelections)
	].
	sortedSelections isEmpty ifTrue: [ ^defaultBlock value ].
	^sortedSelections