arrows
chooseArrowGlyphFor: client selector: selector argument: arg
	"Bring up an arrow catalog.
	When the OK button is pressed, perform the selector on the client with the optional argument."
	| menu |
	menu := NCArrowDictionaryMenu chooseArrowGlyphFor: client selector: #selector.
	menu argument: arg
	