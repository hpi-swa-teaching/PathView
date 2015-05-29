accessing
acceptLabel

	self selectedChange ifNil: [^ 'Apply all'].
	^ (undos includesKey: self selectedChange)
		ifTrue: ['Undo']
		ifFalse: ['Apply']