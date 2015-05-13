updating
isEventCategoryInProject: aSystemEvent
	self isDirty: (self project categories 
					includes: (aSystemEvent environmentAt: #category)).
	^ self isDirty	