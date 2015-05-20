constraints
connectionTargetsAt: localPoint
	^(self pasteUpMorphOrWorld rootMorphsAt: (self point: localPoint in: self pasteUpMorphOrWorld))
		reject: [ :ea | ea == self or: [ ea isHighlight ] ].
