building-customs
buildFaultLocalizationFlapCustomMorphs
	| id options |
	id := #faultLocalization.
	options := self pathMap options at: id.
	self 
		addTitle: 'Fault Localization' 
			toFlap: id 
			inFrame: (0.0 @ 0.0 corner: 1.0 @ 0.0825);
		addColorLegendOn: options
			to: id 
			inFrame: (0.0 @ 0.19 corner: 1.0 @ 0.725);
		addDropDownSelectionListTo: id
			on: options
			with: {{'Ochiai'. #setFormula:. {#ochiai}}.
				   {'Tarantula'. #setFormula:. {#tarantula}}.
				   {'Jaccard'. #setFormula:. {#jaccard}}}
			inFrame: (0.0 @ 0.09 corner: 1.0 @ 0.18).