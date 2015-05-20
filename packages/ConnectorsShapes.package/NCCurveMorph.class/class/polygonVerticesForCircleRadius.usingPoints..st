contours library
polygonVerticesForCircleRadius: radius usingPoints: numPoints
	"Takes the center coordinates and radius of a circle,
	as well as a number of points to generate and generates a series of points
	which make up the polygon representing the circle.
	From code at http://www.poeticgeek.net/log/2003/01/19/19012003-0508h.php"
"
(PolygonMorph vertices:
(NCCurveMorph polygonVerticesForCircleRadius: 100 usingPoints: 10)
color: Color orange borderWidth: 2 borderColor: Color black) openInHand
"
	| x y centerX centerY points |
	centerX := 0.
	centerY := 0.
	points := OrderedCollection new.
	0 to: numPoints - 1 do: [ :i |
        x := centerX + (radius negated * ((2 * i * Float pi / numPoints) sin)).
        y := centerY + (radius * ((2 * i * Float pi  / numPoints) cos)).
		points add: (x@y) rounded.
    ].
    ^points
