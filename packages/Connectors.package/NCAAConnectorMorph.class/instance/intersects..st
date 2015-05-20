geometry
intersects: aRectangle
	"Answer whether aRectangle, which is in World coordinates, intersects any of my segments."
	^line ifNil: [ super intersects: aRectangle ]
		ifNotNil: [ line intersects: aRectangle ]