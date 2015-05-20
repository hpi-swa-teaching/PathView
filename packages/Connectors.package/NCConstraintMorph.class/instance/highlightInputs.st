drawing
highlightInputs
	| highlights |
	highlights := self inputs collect: [ :ea |
		(Morph new)
			bounds: ea fullBounds;
			color: ((Color red) alpha: 0.3);
			lock
	].
	highlights := OrderedCollection withAll: highlights.
	highlights add: ( (EllipseMorph new)
			extent: 12@12;
			center: (self point: self targetPoint in: self pasteUpMorph);
			color: ((Color green) alpha: 0.6);
			lock).
	highlights do: [ :ea | self pasteUpMorph addMorphFront: ea ].
	^highlights
