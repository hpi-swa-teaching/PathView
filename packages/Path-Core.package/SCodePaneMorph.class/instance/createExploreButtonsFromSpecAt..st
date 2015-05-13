explore buttons
createExploreButtonsFromSpecAt: aNumber
	| button yPos |
	yPos := aNumber.
	self createObjectExploreButtonSpec do: [:each |
		button := self createObjectExploreButtonWith: each first 
						name: each second atYPos: yPos.
		each size > 2
			ifTrue: [	button 
						setBalloonText: each third
						maxLineLength: 50].
		yPos := yPos - self class buttonHeight].
	^ yPos