editing
highlightRectChanged

	(self outerBounds areasOutside: (self innerBounds insetBy: 3))
		do: [ :rect | self invalidRect: rect ]