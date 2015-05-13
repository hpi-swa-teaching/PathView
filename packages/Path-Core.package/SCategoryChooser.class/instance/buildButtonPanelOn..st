building
buildButtonPanelOn: aBuilder

	self windowSpec children add: (aBuilder pluggablePanelSpec new
		layout: #vertical;
		frame: (0.00 @ 0.75 corner: 1.00 @ 1.00);
		children: {
			self buildButtonsWith: aBuilder from: self selectButtons.
			self buildButtonsWith: aBuilder from: self userButtons.
			};
		yourself).