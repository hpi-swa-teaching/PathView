testing-TODO
handlesMouseDown: evt
	#(mouseDown mouseUp mouseStillDown click doubleClick startDrag)
		do: [ :sel | self handlerAt: sel ifPresent: [ :h | ^true ]].
	self gestureRecipient ifNotNilDo: [ :gestureRecipient |
		^gestureRecipient allowsGestureStart: evt ].
	^false