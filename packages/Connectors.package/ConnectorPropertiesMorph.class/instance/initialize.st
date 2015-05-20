as yet unclassified
initialize
	"initialize the state of the receiver"
	super initialize.

	thingsToRevert
		at: #lineWidth: put: myTarget lineWidth;
		at: #lineColor: put: myTarget lineColor;
		at: #borderWidth: put: myTarget borderWidth;
		at: #borderColor: put: myTarget borderColor;
		at: #beSmoothCurve: put: myTarget isCurve;
		yourself.

	self rebuild