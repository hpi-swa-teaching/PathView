building
buildButtonsWith: aBuilder
	
	self
		buildButtonsPanelWith: aBuilder
		from: self toolbarButtons
		model: self classDiagramMorph
		frame: (0.0 @ 0.0 corner: 1 @ 0.05)