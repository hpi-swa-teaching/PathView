building
buildWith: aBuilder
	| widget |
	widget := super buildWith: aBuilder.
	widget
		addMorph: self scrollPane;
		addMorph: self miniMap;
		addMorph: self scrollBar.
	^ widget