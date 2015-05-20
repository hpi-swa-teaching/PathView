appearance
borderStyle
	"for compatibility with properties sheets"
	^ ((BorderStyle simple)
		width: self borderWidth;
		baseColor: self borderColor asColor;
		color: self borderColor asColor;
		yourself)