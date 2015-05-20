event handling
startDrag: evt 
	| root |
	root := self rootInPasteUp.
	evt hand releaseKeyboardFocus: self.
	root eventHandler
		ifNotNil: [(root eventHandler handlesClickOrDrag: evt)
				ifTrue: [^ root eventHandler startDrag: evt fromMorph: root]].
	evt hand grabMorph: root