selection
setSelectedMorph: aMorph 
	| selected |
	selected := self selectedMorph.
	super setSelectedMorph: aMorph.
	(selected notNil and: [self highlightItemSelector notNil])
		ifTrue: [self refreshHighlightingOf: selected].
	(aMorph notNil and: [aMorph isCodeExplorerIndentingListItemMorph])
		ifTrue: [aMorph 
					highlightInPathMapIfPossible].