text morphs-accessing
isAnyTextLocked
	^self textMorphs anySatisfy: [ :ea | ea isLocked ]