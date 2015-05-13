visualization
getLegendColors
	^ self thresholdSelected
		ifTrue: [{0.25 -> {Color green}. 
				0.5 -> {Color yellow}.
				0.75 -> {Color orange}.
				1.0 -> {Color red}}]
		ifFalse: [{1.0 -> ((Interval from: self class maxHue to: 0 by: -10) 
					collect: [:each | Color h: each s: self class saturation v: 1.0])}]