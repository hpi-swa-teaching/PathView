computation
totalBoundsOf: aCollectionOfElements
	
	aCollectionOfElements ifEmpty: [ ^ 0 asPoint corner: 0 asPoint ].
	^ aCollectionOfElements
		inject: aCollectionOfElements anyOne bounds
		into: [ :totalExtent :node | totalExtent quickMerge: node bounds ]