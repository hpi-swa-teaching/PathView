*connectors-instance creation
newPartsBinWithOrientation: aListDirection from: quadList buttonClass: buttonClass
	"Answer a new PartBin object, to run horizontally or vertically, obtaining its elements from the list of tuples of the form:
		(<receiver> <selector> <label> <balloonHelp>)"

	^ self new listDirection: aListDirection quadList: quadList buttonClass: buttonClass