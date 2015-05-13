explore buttons
createExploreButtonsForSelfAt: aNumber
	self setExploreBackgroundAt: aNumber.
	"Before button"
	self createObjectExploreIconButtonWith: {#selfBefore. 'before'. 1} 
		icon: UiFugueIcons applicationDockIcon 
		at: self getXPosForControlPanel@(aNumber + self class borderOffset)
		with: 'Explore the receiver object before the method is executed'.
	"After Button"
	self createObjectExploreIconButtonWith: {#selfAfter. 'after'. 1} 
		icon: UiFugueIcons applicationSidebarExpandIcon
		at: (self class codePaneWidth - self class buttonWidth - 1)@
			(aNumber + self class borderOffset)
		with: 'Explore the receiver object after the method was executed'.	
	self setExploreLabel: 'self' at: aNumber.
	^ aNumber - self class buttonHeight