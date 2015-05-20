accessing contours
boundingBox
	"return my actual bounding box"
	| rect |
	rect := Rectangle encompassing: (Array streamContents: [ :s |
		self bezierSegmentsDo: [ :seg | seg lineSegmentsDo: [ :p1 :p2 | s nextPut: p1; nextPut: p2 ]]]).
	^rect