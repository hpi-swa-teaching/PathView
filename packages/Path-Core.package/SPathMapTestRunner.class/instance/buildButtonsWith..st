building
buildButtonsWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: (self buttons collect: [ :each |
			aBuilder pluggableButtonSpec new
				model: self; 
				label: each first;
				action: each second;
				enabled: each third;
				yourself ]);
		yourself.