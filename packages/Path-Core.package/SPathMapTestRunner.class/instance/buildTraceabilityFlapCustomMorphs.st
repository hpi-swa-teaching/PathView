building-customs
buildTraceabilityFlapCustomMorphs
	| id options |
	id := #traceability.
	options := self pathMap options at: id.
	self 
		addTitle: 'Traceability' toFlap: #traceability inFrame: (0.0 @ 0.0 corner: 1.0 @ 0.075);
		addDropDownSelectionListTo: id
			on: options
			with: (self pathMap project concerns groups keys 
					collect: [:each | {each. #setConcernGroup:. {each}}])
			inFrame: (0.0 @ 0.083 corner: 1.0 @ 0.166)
			entriesChanged: #newConcernGroups;
		addColorLegendOn: options
			to: id 
			inFrame: (0.0 @ 0.659 corner: 1.0 @ 0.825).