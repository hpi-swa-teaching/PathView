menus
addEndItemsFor: aConstraintOrNil to: subMenu event: evt
	subMenu add: 'new arrow...' target: self selector: #chooseArrowGlyphFor: argumentList: { constraints indexOf: aConstraintOrNil }.
