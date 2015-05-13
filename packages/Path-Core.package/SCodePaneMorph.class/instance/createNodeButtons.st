buttons
createNodeButtons
	| button x y startX |
	startX := self definition position x + self definition width + self class borderOffset - 1.
	x := startX.
	y := self position y + 1.
	self buttonSpec withIndexDo: [:each :index | 
		button := self createButtonFromSelector: each first icon: each second.
		index - 1 \\ 3 = 0
			ifTrue: [y := self position y + 1 + (index // 3 * button height).
					x := startX].
		button position: x@y.
		button borderWidth: 0.
		each size > 2
			ifTrue: [button setBalloonText: each third maxLineLength: 50].
		x := x + button width].