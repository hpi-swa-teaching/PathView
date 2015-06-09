layout - positioning
assignPositions
	
	| heightsAndWidths |
	heightsAndWidths := self columnAndRowCenters.
	self
		assignPositionsFromColumnWidths: heightsAndWidths key rowHeights: heightsAndWidths value;
		normalizeElements.