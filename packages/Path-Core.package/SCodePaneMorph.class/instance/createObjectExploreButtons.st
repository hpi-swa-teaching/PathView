explore buttons
createObjectExploreButtons
	| yPos |
	yPos := self position y + self class borderOffset + 
				self class codePaneHeight - self class buttonHeight - 5.
	yPos := self createExploreButtonsFromSpecAt: yPos.
	yPos := self createExploreButtonsForSelfAt: yPos.
	yPos := self createExploreButtonsForArgumentsAt: yPos.
