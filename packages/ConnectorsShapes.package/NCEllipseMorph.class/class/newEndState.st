parts bin
newEndState
	"Construct a state diagram end state symbol"
	| inner outer |
	inner := self newStartState.
	inner lock.
	outer := self new
		removeAllMorphs;
		hResizing: #rigid;
		vResizing: #rigid;
		layoutPolicy: nil;
		extent: 27@27;
		color: Color transparent;
		borderWidth: 2;
		borderColor: Color black;
		drawAntialiased: true;
		name: 'End'.
	outer addMorph: inner.
	inner center: outer center.
	^outer