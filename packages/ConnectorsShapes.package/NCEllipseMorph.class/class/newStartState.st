parts bin
newStartState
	"Construct a state diagram start state symbol"
	^self new
		removeAllMorphs;
		extent: 19@19;
		hResizing: #rigid;
		vResizing: #rigid;
		layoutPolicy: nil;
		color: Color black;
		drawAntialiased: true;
		borderWidth: 0;

		name: 'Start'