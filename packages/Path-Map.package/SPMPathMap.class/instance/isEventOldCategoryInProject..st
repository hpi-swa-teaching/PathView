updating
isEventOldCategoryInProject: aSystemEvent
	self isDirty: (self project categories includes: aSystemEvent oldCategory).
	^ self isDirty	