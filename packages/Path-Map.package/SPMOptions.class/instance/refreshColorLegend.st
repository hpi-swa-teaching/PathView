visualization
refreshColorLegend
	self colorLegend 
		ifNotNil: [
			self 
				refreshColorLegendHorizontal;
				refreshColorLegendVertical.
			self colorLegend changed].