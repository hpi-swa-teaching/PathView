instance creation
actionButtonWithLabel: label
	"Answer a simple button for actions. You must call target: and actionSelector:"
	^(SimpleButtonMorph newWithLabel: label)
		cornerStyle: #square;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillWithRamp: {
			0.0->(Color gray muchLighter).
			1.0->(Color gray lighter) } oriented: 0@1 ;
		borderWidth: 2;
		borderRaised;
		yourself.