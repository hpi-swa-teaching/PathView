*connectors-connection
endShapeWidth: aWidth
	| originalWidth originalExtent where newExtent |
	where := self referencePosition.
	originalWidth := self valueOfProperty: #originalWidth ifAbsentPut: [ 2 ].
	originalExtent := self valueOfProperty: #originalExtent ifAbsentPut: [ self extent ].
	newExtent := (originalExtent * aWidth / originalWidth).
	self extent: newExtent.
	self referencePosition: where.
