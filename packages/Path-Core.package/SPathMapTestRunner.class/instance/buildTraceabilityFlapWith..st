building-flaps
buildTraceabilityFlapWith: aBuilder
	| id options |
	id := #traceability.
	options := self pathMap options at: id.
	^ aBuilder pluggableFlapSpec new
		name: #traceability;
		icon: SPathToolsIcons piramidIcon;
		model: self;
		children: {(SPluggableMultiSelectionListSpec new
					model: options;
					name: #concernList;
					list: #allConcerns;
					itemColor: #concernColorAt:;
					getSelectionList: #selectedConcernAt:;
					setSelectionList: #selectedConcernAt:put:;
					frame: (0.0 @ 0.1725 corner: 1.0 @ 0.5575);
					yourself ).
				(aBuilder pluggableButtonSpec new
					model: options;
					frame: (0.0 @ 0.5675 corner: 1.0 @ 0.65);
					label: 'Concerns...';
					action: #chooseConcerns;
					yourself).
				(aBuilder pluggableCheckBoxSpec new
					model: options; 
					frame: (0.0 @ 0.83 corner: 1.0 @ 0.913);
					label: 'Specific Only';
					action: #switchSpecificConcernMethodsOnly;
					state: #specificConcernMethodsOnly;
					yourself ).
				(aBuilder pluggableCheckBoxSpec new
					model: options; 
					frame: (0.0 @ 0.913 corner: 1.0 @ 1.0);
					label: 'Multiple Colors';
					action: #switchMultipleColorsPerMethod;
					state: #multipleColorsPerMethod;
					yourself ).};
		yourself