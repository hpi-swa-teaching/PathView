*connectors-geometry
isShadowVisibleIn: aRectangle
	"aRectangle is in my coordinate system"
	| myShadow patch |
	myShadow := self shadowForm.
	patch := myShadow contentsOfArea: (aRectangle translateBy: bounds origin negated).
	^patch primCountBits ~= 0.
