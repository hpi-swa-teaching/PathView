building-flaps
buildProfilingFlapWith: aBuilder
	| id |
	id := #profiling.
	^ aBuilder pluggableFlapSpec new
		name: #profiling;
		icon: SPathToolsIcons dashboardIcon;
		model: self;
		children: {(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.2 corner: 1.0 @ 0.2975);
					label: 'Profile Leafs';
					action: #switchLeafProfilingRuntime;
					state: #leafProfiling;
					enabled: #isRuntimeProfilingSelected;
					yourself).
				(aBuilder pluggableButtonSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.8975 corner: 1.0 @ 1.0);
					label: 'Highscore';
					action: #showHighscore;
					yourself ).};
		yourself