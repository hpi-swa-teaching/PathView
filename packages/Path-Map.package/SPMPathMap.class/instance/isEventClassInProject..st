updating
isEventClassInProject: aSystemEvent
	self isDirty: 
		(self project isClassInProject: 
			(aSystemEvent environmentAt: #class) theNonMetaClass).
	^ self isDirty