refreshing
refreshHighlightingOf: aMorph 
	(self model perform: self highlightItemSelector	with: aMorph complexContents item) 
		ifTrue: [aMorph highlight]
		ifFalse: [aMorph unhighlight]