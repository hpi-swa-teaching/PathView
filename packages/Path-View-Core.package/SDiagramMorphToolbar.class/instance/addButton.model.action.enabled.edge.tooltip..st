adding
addButton: aLabelMorph model: anObject action: aSelector enabled: aSymbol edge: anEdge tooltip: aTooltipString
	| aButton |
	aButton := SDiagramMorphToolbarButton new
					model: anObject;
					label: aLabelMorph;
					action: aSelector;
					getEnabledSelector: aSymbol;
					balloonText: aTooltipString;
					yourself.

	anEdge = #left ifTrue: [leftBar addMorphBack: aButton].
	anEdge = #top ifTrue: [topBar addMorphBack: aButton].
	anEdge = #right ifTrue: [rightBar addMorphBack: aButton].
	anEdge = #bottom ifTrue: [bottomBar addMorphBack: aButton].