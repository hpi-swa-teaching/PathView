initialization
initialize
	| am tm |
	super initialize.
	self color: Color transparent;
		borderColor: Color transparent;
		borderWidth: 0;
		cellPositioning: #topLeft;
		cellInset: 0;
		layoutInset: 0;
		hResizing: #rigid;
		vResizing: #rigid.
	am := AlignmentMorph new
		color: Color transparent;
		borderWidth: 0;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		layoutInset: 10@-1;
		yourself.
	tm := (NCTextRectangleMorph new)
		borderWidth: 1;
		yourself.
	am addMorphBack: tm.
	self addMorphBack: am.
	self addMorphBack: ((am := NCBasicShapeMorph new)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cornerStyle: #rounded;
		borderWidth: 1;
		yourself).
	am on: #mouseDown send: #mouseDown: to: self.
	am addMorphBack: (PasteUpMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		borderWidth: 0;
		redButtonGestureDictionaryOrName: #StateDiagram;
		yourself).
	self preferredConnection: #connectToNearestPoint;
		extent: 250@150;
		color: self defaultColor.