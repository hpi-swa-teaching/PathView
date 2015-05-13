building-customs
buildProfilingFlapCustomMorphs
	| id options |
	id := #profiling.
	options := self pathMap options at: id.	
	self 
		addTitle: '  Profiling  ' toFlap: #profiling inFrame: (0.0 @ 0.0 corner: 1.0 @ 0.09);
		addColorLegendOn: options
			to: id 
			inFrame: (0.0 @ 0.305 corner: 1.0 @ 0.895);
		addDropDownSelectionListTo: id
			on: options
			with: {{'Method Calls'. #setKindOfProfiling:. {#numberOfMethodCalls}}.
				   {'# Instances'. #setKindOfProfiling:. {#numberOfInstances}}.
				   {'Run-time'. #setKindOfProfiling:. {#runtime}}.
				   {'Run-time / Call'. #setKindOfProfiling:. {#runtimePerCall}}}
			inFrame: (0.0 @ 0.1 corner: 1.0 @ 0.1975).