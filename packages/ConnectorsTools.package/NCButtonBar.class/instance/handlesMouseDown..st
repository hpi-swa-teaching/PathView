event handling
handlesMouseDown: evt 
	^ (evt yellowButtonPressed
			and: [Preferences cmdGesturesEnabled])
		or: [super handlesMouseDown: evt]