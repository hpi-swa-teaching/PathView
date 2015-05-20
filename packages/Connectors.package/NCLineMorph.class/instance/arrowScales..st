arrows
arrowScales: aScalarOrArray 
	"Change the arrow scales relative to my linewidth"
	
	arrowScales := (aScalarOrArray isCollection
		ifFalse: [ Array new: 2 withAll: aScalarOrArray ]
		ifTrue: [ Array withAll: aScalarOrArray ]) replaceAll: 0.0 with: 0.00001.
	self arrows: self arrows.