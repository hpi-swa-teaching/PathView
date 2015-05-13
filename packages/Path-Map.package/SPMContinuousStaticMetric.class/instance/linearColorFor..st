visualization
linearColorFor: aNumber
	^ Color 
		h: (self class maxHue - 
			(((aNumber - self minValue) / 
				(self maxValue - self minValue)) * self class maxHue) asInteger)
		s: self class saturation 
		v: 1.0