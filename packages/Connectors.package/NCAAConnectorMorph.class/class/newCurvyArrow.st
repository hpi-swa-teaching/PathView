instance creation
newCurvyArrow
	"NCAAConnectorMorph newCurvyArrow openInHand"
	^ self new
		beSmoothCurve;
		name: 'Curvy ConnectorArrow';
		arrowNames: #(#noArrow #basicArrow )