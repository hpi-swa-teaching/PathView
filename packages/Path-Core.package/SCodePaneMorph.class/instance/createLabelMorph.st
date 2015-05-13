label
createLabelMorph
	| stringMorph offsetPosX offsetPosY labelMorph |
	stringMorph := StringMorph contents: (self callNode views at: #receiver) asString.

	nodeNameStringMorph := stringMorph.

	labelMorph := RectangleMorph new.
	labelMorph 
		extent: self class codePaneHeight @ self class labelHeight;
		color: self color;
		borderWidth: 1;
		borderColor: Color gray;
		addMorph: stringMorph.
		
	labelMorph width < self height
		ifTrue: [labelMorph width: self height].
	stringMorph width > (labelMorph width - 10)
		ifTrue: [stringMorph extent: (labelMorph width - 10) @ self class labelHeight.].
	
	offsetPosX := ((labelMorph width - stringMorph width) / 2) rounded.
	offsetPosY := ((labelMorph height - stringMorph height) / 2) rounded.
	stringMorph position: (stringMorph position x + offsetPosX)@(stringMorph position y + offsetPosY).	
	self addMorph: labelMorph.
	labelMorph heading: -90.
	labelMorph owner position: (self position x - 2) @ (self position y - 2).
	"Get color information from PathMap if available"
	(self callTreeModel getColorFromMap: self callNode)
		ifNotNil: [:color | labelMorph color: color].
	^ labelMorph