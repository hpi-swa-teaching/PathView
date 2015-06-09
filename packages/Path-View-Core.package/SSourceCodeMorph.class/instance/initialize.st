initialization
initialize
	
	| font extent |
	super initialize.
	font := Preferences standardCodeFont.
	extent := self class defaultExtent x @
				(self class defaultExtent y 
				min: (font pointSize * 2 * 
					(MethodReference class: klass selector: selector) sourceCode lineCount + 20)).
	self
		color: Color gray;
		extent: extent;
		layoutPolicy: TableLayout new;
		layoutInset: self class layoutInset;
		borderWidth: 0;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		initializeCodeHolder: font extent: extent;
		initializeSystemChangeListening.