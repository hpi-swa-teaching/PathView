drawing
containsPoint: aPoint
	^(super containsPoint: aPoint) and: [ 	| shadow |
			shadow := self shadowForm.
			(shadow colorAt: (aPoint - shadow offset)) = Color black ]