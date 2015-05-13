building
buildButtonsPanelWith: aBuilder from: anArray model: aModel frame: aRect
	
	self windowSpec children add: (aBuilder pluggablePanelSpec new
		layout: #horizontal;
		frame: aRect;
		children: {
			self buildButtonsWith: aBuilder from: anArray model: aModel.
			};
		yourself).