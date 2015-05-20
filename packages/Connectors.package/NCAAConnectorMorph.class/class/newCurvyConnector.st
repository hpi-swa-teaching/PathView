instance creation
newCurvyConnector
	"NCAAConnectorMorph newCurvyConnector openInHand"
	^ self new
		beSmoothCurve;
		name: 'Curvy Connector';
		arrowNames: #(#noArrow #noArrow )