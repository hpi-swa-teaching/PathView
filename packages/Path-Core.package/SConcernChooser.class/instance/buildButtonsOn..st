building
buildButtonsOn: aBuilder

	self windowSpec children add: (aBuilder pluggablePanelSpec new
		layout: #vertical;
		frame: (0.00 @ 0.9 corner: 1.00 @ 1.00);
		children: {self buildButtonsWith: aBuilder from: self concernButtons};
		yourself).