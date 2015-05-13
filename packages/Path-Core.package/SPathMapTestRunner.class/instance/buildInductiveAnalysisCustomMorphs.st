building-customs
buildInductiveAnalysisCustomMorphs
	| id options |
	id := #inductive.
	options := self pathMap options at: id.
	self 
		addTitle: 'Induction' 
			toFlap: #inductive 
			inFrame: (0.0 @ 0.0 corner: 1.0 @ 0.09);
		addColorLegendOn: options
			to: id
			inFrame: (0.0 @ 0.2 corner: 1.0 @ 0.79);
		addDropDownSelectionListTo: id
			on: options
			with: SHarvester createAListOfAllHarvester
			inFrame: (0.0 @ 0.1 corner: 1.0 @ 0.1975).