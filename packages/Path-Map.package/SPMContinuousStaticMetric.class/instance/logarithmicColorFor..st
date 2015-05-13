visualization
logarithmicColorFor: aNumber
	aNumber = self minValue 
		ifTrue: [^ Color 
					h: self class maxHue
					s: self class saturation 
					v: 1.0]
		ifFalse: [^ Color 
					h: (self class maxHue - 
						(((aNumber - self minValue) ln / 
							(self maxValue - self minValue) ln) * self class maxHue) asInteger)
					s: self class saturation 
					v: 1.0]