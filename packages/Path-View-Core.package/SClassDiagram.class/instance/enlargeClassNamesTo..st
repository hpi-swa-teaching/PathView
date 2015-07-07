zooming
enlargeClassNamesTo: aHeight
	
	"sm - this should build large font sizes, but does not work in my image..."
	"(TextStyle named: SClassNameMorph fontName) addNewFontSize: aHeight."
	self classMorphs do: [ :each | each nameMorph setFontSize: aHeight ]