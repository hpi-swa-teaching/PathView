instance creation-UML
newNoteConnector
	"Answer a new one of me ready for use in a class diagram"
	"NCAAConnectorMorph newNoteConnector openInHand"
	^self new
		dashedLine: true;
		lineWidth: 1;
		name: 'Note Connector';
		connectToNearestPointToCenter.