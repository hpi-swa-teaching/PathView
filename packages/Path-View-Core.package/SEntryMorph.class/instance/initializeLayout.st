initialization
initializeLayout
	
	indentationMorph := SIndentedLabelMorph new. "This variable is not used by all subclasses... Depending on #labelCentered"
	self
		color: self class defaultColor;
		borderStyle:
				((SSimpleOverlappingBorder new)
						width: self class borderWidth;
						color: self class borderColor);
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #topToBottom.
	self labelCentered ifTrue: [ self wrapCentering: #center ].