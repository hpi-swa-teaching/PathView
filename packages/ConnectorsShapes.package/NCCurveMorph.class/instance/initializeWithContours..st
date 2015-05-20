accessing
initializeWithContours: contours
	| font |
	super initialize.
	self initialContours: contours.
	curve bounds: self curveBounds.
	self hResizing: #rigid; vResizing: #rigid.
	self wrapCentering: #center; listCentering: #center.
	self 
		fillStyle: Color blue muchLighter;
		borderWidth: 2;
		borderColor: Color blue.
	self extent: 100@100.
	self layoutInset: 10@10.

	font := Preferences windowTitleFont.
	submorphs first
		contents: (self knownName ifNil: [' ']);
		fontName: font name pointSize: font pointSize + 3; 
		wrapFlag: true;
		centered;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	submorphs first text allBold.

	self layoutChanged; fullBounds.
	submorphs first updateFromParagraph.

