as yet unclassified
chooseArrowGlyphFor: target selector: selector
	"NCArrowDictionaryMenu chooseArrowGlyphFor: ObjectExplorer new selector: #openExplorerFor:"
	| inst |
	inst := self new chooseArrowGlyphFor: target selector: selector.
     	HandMorph attach: (inst wrappedInWindowWithTitle: 'Arrows' translated).
	^ inst