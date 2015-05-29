building
buildCodePane
	
	codePane := SPluggableTextMorphPlus new.
	codePane on: self
		text: #refactoringText
		accept: #refactoringText:
		readSelection: nil
		menu: nil.
	codePane setProperty: #alwaysAccept toValue: true.
	self addMorph: codePane frame: (0@0.5 corner: 1@1).