editing
interiorHandleForPosition: pos addAllowed: canAddVertex 
	| handle sel |
	handle := self handleForPosition: pos addAllowed: canAddVertex.
	sel := handle setPointSelector.
	handle setPointSelector: ('interiorC', (sel allButFirst)) asSymbol.
	^handle
