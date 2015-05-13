building-customs
buildTestQualityFlapCustomMorphs
	| id options |
	id := #testQuality.
	options := self pathMap options at: id.
	self 
		addTitle: 'Test Quality' toFlap: id inFrame: (0.0 @ 0.0 corner: 1.0 @ 0.095);
		addColorLegendOn: options
			to: id 
			inFrame: (0.0 @ 0.43 corner: 1.0 @ 1.0);
		addDropDownSelectionListTo: id
			on: options
			with: {'Methods' -> #methodCoverage. 
				   'Test Intensity' -> #intensityCoverage.
				   'Statements' -> #statementCoverage.}
			inFrame: (0.0 @ 0.32 corner: 1.0 @ 0.425)	;
		addDropDownSelectionListTo: id
			on: options
			with: {'No Static Metric' -> #staticMetricNone. 
				   'Authors' -> #staticMetricAuthors.
				   'Last Changes' -> #staticMetricLastChanges.
				   'Lines of Code' -> #staticMetricLinesOfCode.
				   'Complexity' -> #staticMetricComplexity.
				   'Variables Access' -> #staticMetricAccessedVariables.}
			inFrame: (0.0 @ 0.1 corner: 1.0 @ 0.205).

