instance creation
on: aMorph in: aScrollPane
	
	^ self basicNew
		viewedMorph: aMorph;
		scrollPane: aScrollPane;
		initialize;
		yourself