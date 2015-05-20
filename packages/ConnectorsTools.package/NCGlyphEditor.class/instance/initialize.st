initialization
initialize
	| buttonBar |
	super initialize.
	rotation := 0.
	arrowScale := 2.0@2.0.
	showDots := false.
	self layoutPolicy: ProportionalLayout new;
		extent: 710@610;
		color: Color white.
	
	buttonBar := AlignmentMorph newRow
		color: (Color blue muchLighter paler);
		layoutInset: 5;
		listCentering: #centered;
		cellInset: 10.

	#(('Choose font' chooseFont)
	('Rotate' rotateGlyph)
	('Toggle dots' toggleDots)
	('Make morph' createCurveMorph)
	('Install' install)
	('Write code' writeConstructor)
	('Clear clicks' clearClicks)
	('Arrow scales' adjustArrowScales)
	('Sample' sample)) withIndexDo: [ :arr :i |
	buttonBar addMorphBack: ((SimpleButtonMorph newWithLabel: arr first translated)
		cornerStyle: #square;
		layoutInset: 4@4;
		color: (Color blue muchLighter);
		borderStyle: ((BorderStyle complexFramed) width: 3);
		target: self; actionSelector: arr second) ].
	buttonBar addMorphBack: (UpdatingStringMorph on: self selector: #arrowScale).
	buttonBar layoutChanged; fullBounds.
	self addMorph: buttonBar fullFrame:  (LayoutFrame fractions: (0@0 corner: 1@0.05)).
