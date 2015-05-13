visualization
createColorMapping
	self colorMapping: Dictionary new.
	self authors withIndexDo: [:each :index | 
		self colorMapping 
			at: each 
			put: (Color h: 360 * ((index) / self authors size) s: self class saturation v: 1.0)].