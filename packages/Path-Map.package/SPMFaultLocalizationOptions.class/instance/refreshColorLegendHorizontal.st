visualization
refreshColorLegendHorizontal
	self colorLegend horizontalColors: 	{1.0 -> ((Interval from: self class maxHue to: 0 by: -10) 
					collect: [:each | Color h: each s: 1.0 v: 1.0])}.