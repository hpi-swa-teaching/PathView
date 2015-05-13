menu-actions
canvasWithoutWhitespace
	
	| topLeft bottomRight |
	(self classMorphs isNil | self submorphs isEmpty) ifNil: [ ^ nil ].
	topLeft := self submorphs first bounds origin.
	bottomRight := self submorphs first bounds corner.
	self submorphs do: [:each |
		topLeft := ((topLeft x) min: (each bounds origin x)) @ ((topLeft y) min: (each bounds origin y)).
		bottomRight := ((bottomRight x) max: (each bounds corner x)) @ ((bottomRight y) max: (each bounds corner y)) ].
	^ topLeft corner: bottomRight