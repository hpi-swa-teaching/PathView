private
mapColor: aColor
	
	^ mapping
		ifNil: [ aColor ]
		ifNotNil: [ mapping value: aColor ]