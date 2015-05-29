layout graph-based
morphForMethod: association do: aBlock
	
	^ self
		morphForClass: association key
		do: [ :classMorph |
			aBlock value: (classMorph methodMorphFor: association) ]