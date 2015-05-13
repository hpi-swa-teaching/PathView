definition
createDefinitionMorph

	| widget model |
	widget := self codePaneClass new.
	widget useDefaultStyler.
	model := SDefinitionModel new.
	model setClass: self callNode clientClass andSelector: self callNode clientSelector.
	widget on: model
				text: #contents
				accept: nil
				readSelection: nil 
				menu: nil.
	widget textMorph addDependent: self.
	widget 
		font: Preferences standardCodeFont;
		getColorSelector: nil;
		borderColor: Color lightGray;
		borderWidth: 0;
		color: Color white.
	self definition: widget.
	self addMorph: self definition.
	self definition extent: self class definitionWidth@self class definitionHeight.
	self definition position: (self definition position x + self class labelHeight)@ 
						(self definition position y + self class borderOffset)