menus
acceptOnFocusLossString

	^ (self acceptOnFocusLoss
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		, 'accept on focus loss' translated
