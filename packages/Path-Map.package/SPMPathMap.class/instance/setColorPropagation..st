visualization
setColorPropagation: aClass

	self rootMorph traverseAllChildsAndDo: [:each | 
		each colorPropagation: aClass].