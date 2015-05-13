*Path-View-GraphLayout
cornerNearestTo: aPoint
	"Not the fastest code, but short and readable. Should be rewritten, if a fast calculation is needed."
	
	^ #( topLeft topRight bottomLeft bottomRight )
		detectMin: [ :symbol |
			(self perform: symbol) dist: aPoint ]