building-customs
addColorLegendOn: aModel to: aSymbol inFrame: aRectangle
	| flap colorLegend |
	flap := self getFlap: aSymbol.
	colorLegend := SColorLegendMorph on: aModel.
	aModel 
		colorLegend: colorLegend;
		refreshColorLegend.
	self setFrame: aRectangle in: colorLegend.
	flap addMorph: colorLegend.
	colorLegend hide.

