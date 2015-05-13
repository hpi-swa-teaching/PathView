event handling
mouseActions

	^ Dictionary newFrom: {
		#mouseEnter -> #hoverIn.
		#mouseLeave -> #hoverOut.
		#click -> #clicked.
		#rightClick -> #menu }