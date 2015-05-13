updating
isEventItemCategoryInProject: aSystemEvent
	self isDirty: (self project categories includes: aSystemEvent item).
	^ self isDirty	