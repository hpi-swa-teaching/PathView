menus
orthogonalityPhrase
	^ self isOrthogonal
		ifTrue:
			['stop being orthogonal' translated]
		ifFalse:
			['be orthogonal' translated]
