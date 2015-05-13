building-flaps
buildTestQualityFlapWith: aBuilder
	| id |
	id := #testQuality.
	^ aBuilder pluggableFlapSpec new
		name: id;
		icon: SPathToolsIcons premiumIcon;
		model: self;
		children: {
				(aBuilder pluggableButtonSpec new
					model: (self pathMap options at: id); 
					frame: (0.0 @ 0.21 corner: 1.0 @ 0.3075);
					label: 'Sort Methods by Metric';
					action: #sortMethodsToStaticMetric;
					enabled: #sortMethodsIsEnabled;
					yourself ).};
		yourself