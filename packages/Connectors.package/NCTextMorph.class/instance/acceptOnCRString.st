menus
acceptOnCRString

	^ (self acceptOnCR
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		, 'accept on CR' translated
