zooming
fontSizeFromScale: aNumber
	"Calculates font size in points from a scale value"

	| fontSize pointSizes maximumFontSizeInPoints |
	"sm - take a look at #enlargeClassNamesTo: -- we would like to define new font sizes, but the interface is broken"
	"thus we clamp the font size to the maximum available size of the selected font"
	fontSize := SClassNameMorph defaultFontSize * SClassNameMorph minimumScale / aNumber.
	pointSizes := (TextStyle named: SClassNameMorph fontName) pointSizes.
	maximumFontSizeInPoints := pointSizes sort last.

	^ fontSize clampHigh: maximumFontSizeInPoints