building-flaps
buildFaultLocalizationFlapWith: aBuilder
	| id |
	id := #faultLocalization.
	^ aBuilder pluggableFlapSpec new
		name: id;
		icon: SPathToolsIcons radiobugIcon;
		model: self;
		children: {(aBuilder pluggableCheckBoxSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.73 corner: 1.0 @ 0.821);
					label: 'Single Fault';
					action: #switchSinglePointOfFault;
					state: #singlePointOfFault;
					yourself).
				(aBuilder pluggableButtonSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.821 corner: 1.0 @ 0.912);
					label: 'Highscore';
					action: #showHighscore;
					yourself ).
				(aBuilder pluggableButtonSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.912 corner: 1.0 @ 1.0);
					label: 'Developer Ranking';
					action: #authorRanking;
					yourself ).
				};
		yourself