building-flaps
buildOptionsFlapWith: aBuilder
	| id |
	id := #globalOptions.
	^ aBuilder pluggableFlapSpec new
		name: id;
		icon: SPathToolsIcons setupIcon;
		model: self;
		children: {(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.16 corner: 1.0 @ 0.32);
					label: 'Show Meth. Categories';
					action: #switchShowMethodCategories;
					state: #showMethodCategories;
					yourself).
				(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.32 corner: 1.0 @ 0.48);
					label: 'Show All Methods';
					action: #switchShowAllMethods;
					state: #showAllMethods;
					yourself ).
				(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.48 corner: 1.0 @ 0.64);
					label: 'Ignore Setup Code';
					action: #switchIgnoreTracingOfSetUpAndTearDownMethods;
					state: #ignoreTracingOfSetUpAndTearDownMethods;
					yourself ).
				(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.64 corner: 1.0 @ 0.8);
					label: 'Visualize Inter-Steps';
					action: #switchVisualizeIntermediateSteps;
					state: #visualizeIntermediateSteps;
					yourself ).
				(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.8 corner: 1.0 @ 0.96);
					label: 'Show Test Results';
					action: #switchShowTestResults;
					state: #showTestResults;
					yourself )};
		yourself