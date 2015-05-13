initialization
initializeCodeHolder: aFont extent: aPoint
	
	model := SDefinitionModel new.
	model setClass: klass andSelector: selector asSymbol.
	definitionPanel := SPluggableTextMorphPlus new.
	definitionPanel useDefaultStyler.
	definitionPanel 
		on: model 
		text: #contents 
		accept: #contents:
		readSelection: nil 
		menu: nil.
	definitionPanel 
		font: aFont;
		getColorSelector: nil;
		borderColor: Color lightGray;
		borderWidth: 1;
		color: Color white;
		extent: (aPoint - (self class layoutInset * 2)).
	self addMorphFront: definitionPanel.
	definitionPanel textMorph addDependent: self. "To receive #update:with:"