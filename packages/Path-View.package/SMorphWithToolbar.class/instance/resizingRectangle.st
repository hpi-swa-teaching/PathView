accessing
resizingRectangle
	
	^ resizingRectangle ifNil: [ resizingRectangle :=
		RectangleMorph new
			borderWidth: 2;
			borderColor: Color black;
			color: Color transparent;
			yourself ]