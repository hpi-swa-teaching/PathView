building-flaps
buildInductiveAnalysisFlapWith: aBuilder
	| id |
	id := #inductive.
	^ aBuilder pluggableFlapSpec new
		name: id;
		icon: SPathToolsIcons collapseIcon;
		model: self;
		children: {(aBuilder pluggableButtonSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.8 corner: 1.0 @ 0.8975);
					label: 'Add Contracts';
					action: #addContracts;
					enabled: #isAddingContractsPossible;
					yourself).
				(aBuilder pluggableButtonSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.8975 corner: 1.0 @ 1.0);
					label: 'Remove Contracts';
					action: #removeContracts;
					enabled: #isRemovingContractsPossible;
					yourself ).};
		yourself