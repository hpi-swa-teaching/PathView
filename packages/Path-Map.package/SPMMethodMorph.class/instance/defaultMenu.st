menu actions
defaultMenu
	^ OrderedCollection 
		with: {'Browse'. UiFugueIcons applicationIconIcon. #browse. 'Browse method'}
		with: {'Debug'. UiFugueIcons bugIcon. #debugMethod. 'Open method behavior with debugger'}
		with: {'Pathfinder'. UiFugueIcons clockHistoryIcon. #pathfinderMethod. 'Open method behavior with PathFinder'}