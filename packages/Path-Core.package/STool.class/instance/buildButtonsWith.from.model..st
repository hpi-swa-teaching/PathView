building
buildButtonsWith: aBuilder from: anArray model: aModel

	^ aBuilder pluggablePanelSpec new
		model: aModel;
		layout: #horizontal;
		children: (anArray collect: [ :each |
			aBuilder pluggableButtonSpec new
				model: aModel; 
				label: each first;
				action: each second;
				enabled: each third;
				yourself ]);
		yourself.