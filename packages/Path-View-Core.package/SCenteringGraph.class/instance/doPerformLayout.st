layout
doPerformLayout
	
	self
		extendParentMorphArea;
		offset: (parentMorph extent - self bounds extent) / 2.
	super doPerformLayout.