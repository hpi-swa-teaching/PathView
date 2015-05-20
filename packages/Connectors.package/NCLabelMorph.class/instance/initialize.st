initialization
initialize
	super initialize.
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		color: Color transparent;
		connectToNearestAttachmentPoint.

